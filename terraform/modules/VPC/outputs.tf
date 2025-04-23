output "vpc_id" {
  description = "ID du VPC"
  value       = google_compute_network.main.id
}

output "subnet_id" {
  description = "ID du sous-réseau"
  value       = google_compute_subnetwork.main_subnet.id
}

output "subnet_name" {
  description = "Nom du sous-réseau"
  value       = google_compute_subnetwork.main_subnet.name
}

output "vpc_self_link" {
  description = "Self link du VPC"
  value       = google_compute_network.main.self_link
}
output "vpc_connector_self_link" {
  value = google_vpc_access_connector.connector.id
}