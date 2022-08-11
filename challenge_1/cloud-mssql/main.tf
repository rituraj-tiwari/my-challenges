module "mssql-private" {
  source  = "GoogleCloudPlatform/sql-db/google//examples/msql-private"
  version = "11.0.0"
  network_name         = var.network_name
  project_id           = var.project_id
  db_name              = var.db_name
  name                 = var.name
  random_instance_name = var.random_instance_name
  tier                 = var.tier
  database_flags       = var.database_flags
  database_version     = var.database_version
  deletion_protection  = var.deletion_protection
  region               = var.region
  zone                 = var.zone
}