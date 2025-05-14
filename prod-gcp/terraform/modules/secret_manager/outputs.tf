output "secret_ids" {
  description = "Liste des IDs des secrets créés"
  value       = [for s in google_secret_manager_secret.secrets : s.id]
}