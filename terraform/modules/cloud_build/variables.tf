variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "trigger_name" {
  description = "Nom du déclencheur Cloud Build"
  type        = string
}

variable "build_config_file" {
  description = "Chemin vers le fichier cloudbuild.yaml"
  type        = string
  default     = "cloudbuild.yaml"
}

variable "repo_owner" {
  description = "Propriétaire du dépôt GitHub"
  type        = string
}

variable "repo_name" {
  description = "Nom du dépôt GitHub"
  type        = string
}

variable "branch_regex" {
  description = "Regex de la branche GitHub à surveiller (ex: ^main$)"
  type        = string
  default     = "^main$"
}