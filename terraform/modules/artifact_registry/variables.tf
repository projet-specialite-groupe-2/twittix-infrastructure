variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "region" {
  description = "Région du registre (ex: europe-west1)"
  type        = string
}

variable "repository_id" {
  description = "Nom du dépôt Artifact Registry"
  type        = string
}

variable "format" {
  description = "Format du registre (DOCKER, MAVEN, NPM, etc.)"
  type        = string
  default     = "DOCKER"
}

variable "description" {
  description = "Description du dépôt"
  type        = string
  default     = ""
}

variable "cloud_build_sa" {
  description = "Adresse e-mail du service account Cloud Build à qui accorder les droits d'écriture"
  type        = string
}