module "cloud_sql_1" {
  source           = "./modules/cloud_sql"
  project_id       = var.project_id
  region           = var.region
  instance_name    = "twittix-postgres"
  database_version = "POSTGRES_17"
  tier             = "db-f1-micro"
  database_name    = var.db_name1
  database_password = var.db_password1
  database_user = var.db_user1
  private_network = module.vpc.vpc_self_link
  providers = {
    google = google
  }

  depends_on = [module.vpc.private_vpc_connection]

}

