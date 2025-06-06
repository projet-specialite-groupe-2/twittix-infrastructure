module "redis" {
  source      = "./modules/memorystore"
  project_id  = var.project_id
  region      = var.region
  redis_name        = "twittix-redis"
  redis_tier        = "BASIC"
  memory_size_gb = 1
  redis_version  = "REDIS_7_2"
  network            = module.vpc.vpc_self_link
  providers = {
    google = google
  }

  depends_on = [module.vpc.private_vpc_connection]

}