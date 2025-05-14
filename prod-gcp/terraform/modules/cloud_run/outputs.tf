output "service_name" {
  description = "Nom du service Cloud Run"
  value       = google_cloud_run_service.default.name
}

output "service_location" {
  description = "Région du service"
  value       = google_cloud_run_service.default.location
}

output "service_url" {
  description = "URL publique du service Cloud Run"
  value       = google_cloud_run_service.default.status[0].url
}

output "service_id" {
  description = "ID du service Cloud Run"
  value       = google_cloud_run_service.default.id
}

output "build_trigger_id" {
  description = "ID du déclencheur Cloud Build (si utilisé)"
  value       = google_cloudbuild_trigger.cloudrun_build.id
}
