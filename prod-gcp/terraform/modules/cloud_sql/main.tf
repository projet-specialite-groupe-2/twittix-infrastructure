terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.19.0"
    }
  }
}
resource "google_sql_database_instance" "main" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region
  project          = var.project_id

  settings {
    tier = var.tier
    edition = "ENTERPRISE"

    ip_configuration {
      ipv4_enabled    = false
      private_network = var.private_network
    }
  }
  deletion_protection = false

}

resource "google_sql_database" "default" {
  name     = var.database_name
  instance = google_sql_database_instance.main.name
}

resource "google_sql_user" "default" {
  name     = var.database_user
  instance = google_sql_database_instance.main.name
  password = var.database_password
}