variable "project_id" {
  description = "ID du projet GCP"
  type        = string
  default     = "twittix"
}

variable "project_number" {
  description = "Numéro du projet GCP"
  type        = string
  default     = "281743633186"
}

variable "region" {
  description = "Région GCP de déploiement"
  type        = string
  default     = "europe-west1"
}

variable "zone" {
  description = "Zone par défaut (utile pour certains composants Compute)"
  type        = string
  default     = "europe-west1-b"
}