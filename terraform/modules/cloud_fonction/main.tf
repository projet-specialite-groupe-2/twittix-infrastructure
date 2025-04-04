
resource "google_cloud_run_service" "default" {
  name     = var.container_name
  location = var.region

  template {
    spec {
      containers {
        image = var.container_image

        env {
          name  = var.container_var_env_name
          value = var.container_var_env_value
        }

        ports {
          container_port = var.container_port
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
s
resource "google_cloud_run_service_iam_member" "invoker" {
  location = google_cloud_run_service.default.location
  project  = var.project_id
  service  = google_cloud_run_service.default.name
  role     = "roles/run.invoker"
  member   = "allUsers" # pour accès public
}

resource "google_cloudbuild_trigger" "cloudrun_build" {
  name = "build-cloudrun"
  filename = "cloudbuild.yaml"
}
