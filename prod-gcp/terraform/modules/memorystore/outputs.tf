output "host" {
  description = "Adresse IP privée de Redis (pour Cloud Run)"
  value       = google_redis_instance.main.host
}

output "port" {
  description = "Port d'accès à Redis"
  value       = google_redis_instance.main.port
}