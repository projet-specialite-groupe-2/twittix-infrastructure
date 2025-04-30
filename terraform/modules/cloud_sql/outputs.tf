output "instance_connection_name" {
  description = "Nom de connexion Cloud SQL (pour Cloud Run)"
  value       = google_sql_database_instance.main.connection_name
}

output "database_instance_id" {
  description = "ID de l'instance Cloud SQL"
  value       = google_sql_database_instance.main.id
}