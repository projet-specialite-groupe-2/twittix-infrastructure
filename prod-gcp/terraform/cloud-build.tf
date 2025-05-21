module "cloud_build_auth_api" {
  source            = "./modules/cloud_build"
  project_id        = var.project_id
  trigger_name      = "build-auth-api"
  build_config_file = "cloudbuild.yaml" //chemins dans de depot github
  repo_owner        = "projet-specialite-groupe-2"
  repo_name         = "twittix-auth-api"
  branch_regex      = "^main$"
}

module "cloud_build_backend_api" {
  source            = "./modules/cloud_build"
  project_id        = var.project_id
  trigger_name      = "build-backend-api"
  build_config_file = "cloudbuild.yaml"
  repo_owner        = "projet-specialite-groupe-2"
  repo_name         = "twittix-api"
  branch_regex      = "^main$"
}

module "cloud_build_recommendation_api" {
  source            = "./modules/cloud_build"
  project_id        = var.project_id
  trigger_name      = "build-recommendation-api"
  build_config_file = "cloudbuild.yaml"
  repo_owner        = "projet-specialite-groupe-2"
  repo_name         = "twittix-recommandation-api"
  branch_regex      = "^main$"
}

module "cloud_build_front_user" {
  source            = "./modules/cloud_build"
  project_id        = var.project_id
  trigger_name      = "build-front-user"
  build_config_file = "cloudbuild.yaml"
  repo_owner        = "projet-specialite-groupe-2"
  repo_name         = "twittix-front-user"
  branch_regex      = "^main$"
}

