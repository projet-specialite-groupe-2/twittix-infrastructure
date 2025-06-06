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

variable "db_name1" {
  type        = string
  description = "Nom de la base de données PostgreSQL"
}
variable "db_password1" {
  type        = string
  description = "Mot de passe PostgreSQL"
}
variable "db_user1" {
  type        = string
  description = "Nom d'utilisateur PostgreSQL"
}

variable "cloud_run_sa_email" {
  description = "Adresse email de la service account utilisée par les services Cloud Run"
  type        = string
}

variable "image_tag" {
  description = "Tag de l'image Docker à déployer (ex: latest, v1.2.0, sha)"
  type        = string
  default     = "latest"
}

variable "ip_cidr_range1" {
  description = "IP CIDR si necessaire"
  type= string
}