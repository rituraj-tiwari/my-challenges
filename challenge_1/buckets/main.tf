module "bucket" {
  source             = "terraform-google-modules/cloud-storage/google"
  
  project_id         = var.project_id
  prefix             = var.prefix
  names              = var.names
  location           = var.location
  
  storage_class      = var.storage_class
  labels             = var.labels
  randomize_suffix   = true
  set_admin_roles    = true
  #admins              = ["group:cu-tf-test@steam-snowfall-345010.iam.gserviceaccount.com"]
  #bucket_policy_only = var.bucket_policy_only
  #versioning         = var.versioning
  #force_destroy      = var.force_destroy
  #iam_members        = var.iam_members
  #retention_policy   = var.retention_policy
  #encryption         = var.encryption
  lifecycle_rules    = var.lifecycle_rules

}