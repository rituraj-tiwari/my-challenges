variable "project_id" {
    description = "The ID of the project in which the resource belongs."
  
}

variable "vpcconn" {
    description = "Name of the VPC serveless connector."
  
}

variable "network_name" {
    description = "Name of the VPC network under for which VPC serveless connector is to be created."
  
}

variable "ip_cidr_range" {
    default = "10.8.0.0/28"
    description = "The range of internal addresses that follows RFC 4632 notation. Example: 10.132.0.0/28."
  
}

variable "region" {
    description = "Region where the VPC Access connector resides. If it is not provided, the provider region is used."
    default = "us-west1"
}

variable "max_throughput" {
    description = "Maximum throughput of the connector in Mbps, must be greater than min_throughput. Default is 300"
    default = 300
  
}

##########Cloud Run Variables##########

variable "service_name" {
    description = "The name of the Cloud run service."
  
}