variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "iam_bindings" {
  description = "Map des rôles IAM à appliquer"
  type = map(object({
    role   = string
    member = string
  }))
}