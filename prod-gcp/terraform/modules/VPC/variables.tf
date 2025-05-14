variable "vpc_name" {
  description = "Nom du VPC"
  type        = string
  default     = "twittix-vpc"
}

variable "subnet_cidr" {
  description = "CIDR du sous-réseau"
  type        = string
  default     = "10.10.0.0/16"
}

variable "region" {
  description = "Région pour le sous-réseau"
  type        = string
}

variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "connector_name" {
  description = "Nom du VPC Serverless Connector"
  type        = string
  default     = "vpc-connector-twittix"
}

variable "ip_cidr_range" {
  description = "Plage CIDR réservée pour le VPC connector. Exemple : # Ex: 10.8.0.0/28.  "
  type        = string
  default     = "10.8.0.0/28"
}
variable "connector_region" {
    description = "Région pour le VPC"
    type        = string
}


variable "connector_vpc_name" {
  type = string
}