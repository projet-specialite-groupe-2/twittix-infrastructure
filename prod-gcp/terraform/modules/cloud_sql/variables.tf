variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "region" {
  description = "Région pour l'instance Cloud SQL"
  type        = string
}

variable "instance_name" {
  description = "Nom de l'instance Cloud SQL"
  type        = string
}

variable "database_version" {
  description = "Version du moteur de base de données"
  type        = string
  default     = "POSTGRES_14"
}

variable "tier" {
  description = "Tier de machine pour Cloud SQL (ex: db-f1-micro)"
  type        = string
  default     = "db-f1-micro"
}

variable "private_network" {
  description = "Self-link du VPC privé pour accès interne uniquement"
  type        = string
}

variable "database_name" {
  description = "Nom de la base de données à créer"
  type        = string
}

variable "database_user" {
  description = "Nom de l'utilisateur SQL à créer"
  type        = string
}

variable "database_password" {
  description = "Mot de passe de l'utilisateur SQL"
  type        = string
}