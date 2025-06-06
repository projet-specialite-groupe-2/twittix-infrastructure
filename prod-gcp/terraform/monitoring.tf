# Dans ton fichier racine ou un fichier de configuration principal (ex: main.tf)
# C'est ici que tu devrais définir ton canal de notification.

resource "google_monitoring_notification_channel" "email_alert_channel" {
  display_name = "Email Alerts for Twittix"
  type         = "email"
  labels = {
    email_address = "theo.boursy@etud.u-picardie.fr" # REMPLACE CECI PAR TON ADRESSE EMAIL RÉELLE POUR RECEVOIR LES ALERTES
  }
  # Il est crucial que le canal soit activé pour qu'il puisse être utilisé par les alertes.
  enabled = true
}

# Ensuite, dans tes appels de modules de monitoring, tu vas référencer l'ID de ce canal.
# Mise à jour des appels de module pour utiliser l'ID du canal de notification créé.

module "monitoring_logging_cloud_run" {
  source                = "./modules/monitoring "
  project_id            = var.project_id
  sink_name             = "log-sink-cloud-run"
  destination           = "storage.googleapis.com/cloudrun-logs"
  filter                = "resource.type=cloud_run_revision"
  # Utilise l'ID du canal de notification Terraform
  notification_channels = [google_monitoring_notification_channel.email_alert_channel.id]
}

module "monitoring_logging_sql" {
  source                = "./modules/monitoring "
  project_id            = var.project_id
  sink_name             = "log-sink-sql"
  destination           = "storage.googleapis.com/sql-logs"
  filter                = "resource.type=cloudsql_database"
  # Utilise l'ID du canal de notification Terraform
  notification_channels = [google_monitoring_notification_channel.email_alert_channel.id]
}

module "monitoring_logging_redis" {
  source                = "./modules/monitoring "
  project_id            = var.project_id
  sink_name             = "log-sink-redis"
  destination           = "storage.googleapis.com/redis-logs"
  filter                = "resource.type=redis_instance"
  # Utilise l'ID du canal de notification Terraform
  notification_channels = [google_monitoring_notification_channel.email_alert_channel.id]
}