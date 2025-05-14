resource "google_artifact_registry_repository" "main" {
  provider      = google
  location      = var.region
  repository_id = var.repository_id
  format        = var.format
  description   = var.description
  project       = var.project_id
}

resource "google_artifact_registry_repository_iam_member" "writer" {
  repository = google_artifact_registry_repository.main.name
  location   = var.region
  project    = var.project_id
  role       = "roles/artifactregistry.writer"
  member     = "serviceAccount:${var.cloud_build_sa}"
}