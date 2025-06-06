module "artifact_registry" {
  source         = "./modules/artifact_registry"
  project_id     = var.project_id
  region         = var.region
  repository_id  = "twittix"
  description    = "Conteneurs de l'application Twittix"
  cloud_build_sa = "serviceAccount:${data.google_project.project.number}@cloudbuild.gserviceaccount.com"
}
data "google_project" "project" {
  project_id = var.project_id # Ou l'ID de ton projet si tu le définis directement
}