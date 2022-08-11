output "instance_name" {
    value = module.sql-db_mssql.instance_name
    description = "The instance name for the master instance."
}

output "instance_self_link" {
    value = module.sql-db_mssql.instance_self_link
    description = "The URI of the master instance."
}

output "instance_address" {
    value = module.sql-db_mssql.instance_address
    description = "The IPv4 addesses assigned for the master instance."
}

output "additional_users" {
    sensitive = true
    value = module.sql-db_mssql.additional_users
    description = "List of maps of additional users and passwords."
}

output "generated_user_password" {
    sensitive = true
    value = module.sql-db_mssql.generated_user_password
    description = "The auto generated default user password if not input password was provided."
  
}