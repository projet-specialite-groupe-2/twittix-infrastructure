resource "google_redis_instance" "main" {
  name              = var.redis_name
  tier              = var.redis_tier
  memory_size_gb    = var.memory_size_gb
  region            = var.region
  project           = var.project_id
  authorized_network = var.network

  redis_version     = var.redis_version
  connect_mode      = "PRIVATE_SERVICE_ACCESS"
}