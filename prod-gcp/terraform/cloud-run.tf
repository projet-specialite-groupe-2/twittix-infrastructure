# === AUTH API ===
module "cloud_run_auth_api" {
  source              = "./modules/cloud_run"

  repo_name = "twittix-auth-api"

  container_name      = "auth-api"
  container_image     = "europe-west1-docker.pkg.dev/${var.project_id}/twittix/auth-api:${var.image_tag}"

  build_name          = "build-auth-api"
  filename            = "auth-api/cloudbuild.yaml"


  container_port      = 8080
  region              = var.region
  project_id          = var.project_id
  service_account_email = var.cloud_run_sa_email


  vpc_connector     = module.vpc.vpc_connector_self_link
  egress_setting    = "ALL_TRAFFIC"
  invoker_members   = ["allUsers"]
}

# === BACKEND API ===
module "cloud_run_backend_api" {
  source              = "./modules/cloud_run"

  repo_name = "twittix-api"

  container_name      = "backend-api"
  container_image     = "europe-west1-docker.pkg.dev/${var.project_id}/twittix/backend-api:${var.image_tag}"

  build_name          = "build-backend-api"
  filename            = "backend-api/cloudbuild.yaml"

  container_port      = 8081
  region              = var.region
  project_id          = var.project_id
  service_account_email = var.cloud_run_sa_email
  vpc_connector     = module.vpc.vpc_connector_self_link
  egress_setting    = "ALL_TRAFFIC"
  invoker_members   = ["allUsers"]

}

# === RECO API ===
module "cloud_run_reco_api" {
  source              = "./modules/cloud_run"

  repo_name = "twittix-recommandation-api"

  container_name      = "reco-api"
  container_image     = "europe-west1-docker.pkg.dev/${var.project_id}/twittix/reco-api:${var.image_tag}"

  build_name          = "build-reco-api"
  filename            = "reco-api/cloudbuild.yaml"

  container_port      = 8082
  region              = var.region
  project_id          = var.project_id
  service_account_email = var.cloud_run_sa_email

  vpc_connector     = module.vpc.vpc_connector_self_link
  egress_setting    = "ALL_TRAFFIC"
  invoker_members   = ["allUsers"]
}

# === FRONT USER ===
module "cloud_run_front_user" {
  source              = "./modules/cloud_run"

  repo_name = "twittix-front-user"

  container_name      = "front-user"
  container_image     = "europe-west1-docker.pkg.dev/${var.project_id}/twittix/front-user:${var.image_tag}"

  build_name          = "build-front-user"
  filename            = "front-user/cloudbuild.yaml"

  container_port      = 80
  region              = var.region
  project_id          = var.project_id
  service_account_email = var.cloud_run_sa_email

  secrets = []
  vpc_connector     = module.vpc.vpc_connector_self_link
  egress_setting    = "ALL_TRAFFIC"
  invoker_members   = ["allUsers"]
}

