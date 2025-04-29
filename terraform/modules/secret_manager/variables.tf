variable "secrets" {
  description = "Secrets à créer dans Secret Manager. Map avec clé = nom du secret et valeur = contenu du secret."
  type        = map(string)
}