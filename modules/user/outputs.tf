output "id" {
  description = "The ID of this resource."
  value       = try(aiven_opensearch_user.this[0].id, "")
}

output "project" {
  description = "Aiven Cloud Project Name."
  value       = try(aiven_opensearch_user.this[0].project, "")
}

output "service_name" {
  description = "Specifies the actual name of the service."
  value       = try(aiven_opensearch_user.this[0].service_name, "")
}

output "username" {
  description = "The actual name of the Opensearch User."
  value       = try(aiven_opensearch_user.this[0].username, "")
}

output "password" {
  description = "The password of the Opensearch User."
  sensitive   = true
  value       = try(aiven_opensearch_user.this[0].password, "")
}