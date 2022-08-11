variable "project_id" {
    description = "ID of the project where VPC needs to be created."
    
}

variable "network_name" {
    description = "Name of the VPC network to be created."
  
}

variable "routing_mode" {
    default = "GLOBAL"
  
}