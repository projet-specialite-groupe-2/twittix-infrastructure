module "monitoring_logging_cloud_run" {
  source                = "./modules/monitoring "
  project_id            = var.project_id
  sink_name             = "log-sink-cloud-run"
  destination           = "storage.googleapis.com/cloudrun-logs"
  filter                = "resource.type=cloud_run_revision"
  notification_channels = [
    "projects/${var.project_id}/notificationChannels/1234567890"
  ]
}

module "monitoring_logging_sql" {
  source                = "./modules/monitoring "
  project_id            = var.project_id
  sink_name             = "log-sink-sql"
  destination           = "storage.googleapis.com/sql-logs"
  filter                = "resource.type=cloudsql_database"
  notification_channels = [
    "projects/${var.project_id}/notificationChannels/1234567890"
  ]
}

module "monitoring_logging_redis" {
  source                = "./modules/monitoring "
  project_id            = var.project_id
  sink_name             = "log-sink-redis"
  destination           = "storage.googleapis.com/redis-logs"
  filter                = "resource.type=redis_instance"
  notification_channels = [
    "projects/${var.project_id}/notificationChannels/1234567890"
  ]
}