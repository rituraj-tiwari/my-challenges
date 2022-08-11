variable "network_name"{
    description = ""
    default = ""
}

variable "project_id" {
    description = "The project ID to manage the Cloud SQL resources"
    default = ""
    type = string
}

variable "db_name" {
    description = "The name of the default database to create"
    default = ""
    type = string
}

variable "name" {
    description = "The name of the Cloud SQL resources"
    type        = string  
    default = ""
}

variable "random_instance_name" {
    description = "Sets random suffix at the end of the Cloud SQL resource name."
    type        = bool  
    
}

variable "database_version" {
    description = "The database version to use"
    type = string
    default = ""
}

variable "tier" {
    description = "The tier for the master instance"
    type    = string
    default = ""
}

variable "database_flags" {
    description = "List of Cloud SQL flags that are applied to the database server"
    default = ""
}

variable "deletion_protection" {
    description = "Used to block Terraform from deleting a SQL Instance."
    type = bool
    default = false
}

variable "region" {
    description = "The region of the Cloud SQL resources"
    type = string
    default = "us-central1"
}

variable "zone" {
    description = "The zone for the master instance."
    type = string
    default = "us-central1-a"
}