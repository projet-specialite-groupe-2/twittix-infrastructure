variable "container_name" {
  type        = string
  description = "Nom du service Cloud Run"
}

variable "container_image" {
  type        = string
  description = "Image Docker à déployer"
}

variable "container_port" {
  type        = number
  default     = 8080
}

variable "region" {
  type        = string
  description = "Région de déploiement"
}

variable "project_id" {
  type        = string
}

variable "service_account_email" {
  type        = string
  description = "Email du service account à utiliser"
}

variable "vpc_connector" {
  type        = string
  default     = null
  description = "Nom complet du VPC connector"
}

variable "egress_setting" {
  type        = string
  default     = "ALL_TRAFFIC"
  description = "Sortie du trafic depuis le VPC connector"
}

variable "secrets" {
  type = list(object({
    name        = string
    secret_name = string
    secret_key  = string
  }))
  default = null
}

variable "invoker_members" {
  type        = list(string)
  default     = ["allUsers"]
  description = "Liste des comptes IAM ayant accès au service"
}

variable "build_name" {
  type        = string
}

variable "filename" {
  type        = string
  description = "Nom du fichier cloudbuild.yaml"
}
