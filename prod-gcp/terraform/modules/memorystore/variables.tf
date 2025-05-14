variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "region" {
  description = "Région de déploiement Redis (doit être la même que Cloud Run)"
  type        = string
}

variable "redis_name" {
  description = "Nom de l'instance Redis"
  type        = string
}

variable "memory_size_gb" {
  description = "Taille mémoire Redis (en Go)"
  type        = number
  default     = 1
}

variable "redis_tier" {
  description = "Tier Redis (BASIC ou STANDARD_HA)"
  type        = string
  default     = "BASIC"
}

variable "redis_version" {
  description = "Version de Redis"
  type        = string
  default     = "REDIS_6_X"
}

variable "network" {
  description = "Self-link du VPC autorisé (doit être privé)"
  type        = string
}