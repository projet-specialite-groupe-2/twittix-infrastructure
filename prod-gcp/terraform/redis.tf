module "redis" {
  source      = "./modules/memorystore"
  project_id  = var.project_id
  region      = var.region
  redis_name        = "twittix-redis"
  redis_tier        = "BASIC"
  memory_size_gb = 1
  redis_version  = "REDIS_6_X"
  network            = module.vpc.vpc_connector_self_link
}