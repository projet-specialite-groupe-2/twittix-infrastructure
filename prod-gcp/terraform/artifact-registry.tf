module "artifact_registry" {
  source         = "./modules/artifact_registry"
  project_id     = var.project_id
  region         = var.region
  repository_id  = "twittix"
  description    = "Conteneurs de l'application Twittix"
  cloud_build_sa = "serviceAccount:${var.project_number}@cloudbuild.gserviceaccount.com"
}