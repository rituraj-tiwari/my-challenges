project_id = "steam-snowfall-345010"
region     = "us-central1"
zone       = "us-central1-a"
db_name    = "test_db"
name       = "test"
database_version = "SQLSERVER_2019_STANDARD"
tier      = "db-custom-2-3840" #"db-f1-micro"
random_instance_name = true
deletion_protection  = false

backup_configuration = {
    binary_log_enabled             = null
    enabled                        = false
    point_in_time_recovery_enabled = null
    start_time                     = "00:00"
    location                       = "us-central1"
    transaction_log_retention_days = "5"
    retained_backups               = 1
    retention_unit                 = null
  }

database_flags  = []