# VPC access connector
resource "google_vpc_access_connector" "connector" {
  name          = var.vpcconn
  project       = var.project_id
  region        = var.region
  ip_cidr_range = var.ip_cidr_range
  max_throughput= var.max_throughput
  network       = var.network_name
}

# Cloud Run service
resource "google_cloud_run_service" "gcr_service" {
  name     = var.service_name
  project       = var.project_id
  location = var.region

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
        resources {
          limits = {
            cpu = "1000m"
            memory = "512M"
          }
        }
      }
      # the service uses this SA to call other Google Cloud APIs
      # service_account_name = myservice_runtime_sa
    }

    metadata {
      annotations = {
        # Limit scale up to prevent any cost blow outs!
        "autoscaling.knative.dev/maxScale" = "5"
        # Use the VPC Connector
        "run.googleapis.com/vpc-access-connector" = google_vpc_access_connector.connector.name
        # all egress from the service should go through the VPC Connector
        "run.googleapis.com/vpc-access-egress" = "all-traffic"
      }
    }
  }
  autogenerate_revision_name = true
}
