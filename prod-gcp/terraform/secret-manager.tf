module "secrets_auth_api" {
  source = "./modules/secret_manager"

  secrets = {

  }
}

module "secrets_backend_api" {
  source = "./modules/secret_manager"

  secrets = {

  }
}

module "secrets_recommendation_api" {
  source = "./modules/secret_manager"

  secrets = {
  }
}

module "secrets_front_user" {
  source = "./modules/secret_manager"

  secrets = {
  }
}

module "secrets_front_admin" {
  source = "./modules/secret_manager"

  secrets = {

  }
}