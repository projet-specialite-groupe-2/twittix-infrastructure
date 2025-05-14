output "repository_name" {
  description = "Nom du registre Artifact Registry"
  value       = google_artifact_registry_repository.main.name
}

output "repository_url" {
  description = "URL du registre Docker"
  value       = "europe-west1-docker.pkg.dev/${var.project_id}/${var.repository_id}"
}

