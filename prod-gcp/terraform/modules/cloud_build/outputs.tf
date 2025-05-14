output "trigger_id" {
  description = "ID du déclencheur Cloud Build"
  value       = google_cloudbuild_trigger.default.id
}

output "trigger_name" {
  description = "Nom du déclencheur"
  value       = google_cloudbuild_trigger.default.name
}