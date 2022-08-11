output "names_list" {
  description = "List of bucket names."
  value       = module.bucket.names[*]
}

output "list" {
  description = "Bucket names."
  value = module.bucket.names_list
}