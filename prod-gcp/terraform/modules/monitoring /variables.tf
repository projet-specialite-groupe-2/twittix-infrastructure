variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "sink_name" {
  description = "Nom du log sink"
  type        = string
  default     = "twittix-log-sink"
}

variable "destination" {
  description = "Destination du log sink (Cloud Storage, BigQuery ou Pub/Sub)"
  type        = string
}

variable "filter" {
  description = "Filtre pour les logs à exporter"
  type        = string
  default     = ""
}

variable "notification_channels" {
  description = "Liste des canaux de notification (emails, etc.) pour les alertes"
  type        = list(string)
  default     = []
}