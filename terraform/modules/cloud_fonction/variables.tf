variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  default     = "europe-west1"
  description = "GCP region"
}

variable "container_image" {
  type        = string
  description = "Image Docker déployée (gcr.io/... ou artifactregistry)"
}
variable "container_port" {
  type        = number
  default     = 8080
  description = "Port d'écoute du conteneur"
}

variable "container_name" {
  type        = string
  default     = "cloud-function"
  description = "Nom du service Cloud Run"
}

variable "container_var_env_name" {
  type        = string
  default     = "ENV"
  description = "Nom de la variable d'environnement"
}
variable "container_var_env_value" {
  type        = string
  default     = "prod"
  description = "Valeur de la variable d'environnement"
}