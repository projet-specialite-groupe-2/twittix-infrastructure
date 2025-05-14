# Déclaration d'un service Cloud Run
resource "google_cloud_run_service" "default" {
  name     = var.container_name         # Nom du service (ex: auth-api)
  location = var.region                 # Région (ex: europe-west1)
  project  = var.project_id             # ID du projet GCP

  template {
    spec {
      service_account_name = var.service_account_email  # Service Account utilisé pour s'authentifier (ex: accès secrets, Cloud SQL...)

      containers {
        image = var.container_image     # Image Docker du service (ex: gcr.io/my-project/auth-api:latest)

        # Injection dynamique de secrets depuis Secret Manager en tant que variables d'environnement
        dynamic "env" {
          for_each = var.secrets != null ? var.secrets : []
          content {
            name = env.value.name       # Nom de la variable d'environnement (ex: DB_PASSWORD)
            value_from {
              secret_key_ref {
                name = env.value.secret_name   # Nom du secret dans Secret Manager
                key  = env.value.secret_key    # Version ou clé du secret (souvent "latest")
              }
            }
          }
        }

        # Port exposé par le conteneur
        ports {
          container_port = var.container_port  # Généralement 8080 par défaut
        }
      }

      # Accès au VPC pour permettre l'accès à SQL, Redis, etc.
      dynamic "vpc_access" {
        for_each = var.vpc_connector != null ? [1] : []
        content {
          connector = var.vpc_connector   # Nom complet du VPC connector (ex: projects/xxx/locations/xxx/connectors/my-connector)
          egress    = var.egress_setting  # Contrôle le type de trafic sortant (ALL_TRAFFIC ou PRIVATE_RANGES_ONLY)
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

# IAM : Donne à une liste de membres le rôle "invoker" (permet d'appeler le service Cloud Run)
resource "google_cloud_run_service_iam_member" "invoker" {
  for_each = toset(var.invoker_members)       # Liste des membres (ex: ["allUsers"] pour public)

  location = google_cloud_run_service.default.location
  project  = var.project_id
  service  = google_cloud_run_service.default.name
  role     = "roles/run.invoker"
  member   = each.value                       # Le membre IAM (ex: "user:you@example.com", "allUsers", etc.)
}

# Déclencheur Cloud Build pour lancer automatiquement un build (via cloudbuild.yaml) à chaque commit/push
resource "google_cloudbuild_trigger" "cloudrun_build" {
  name     = var.build_name    # Nom du déclencheur
  filename = var.filename      # Fichier YAML de build (ex: cloudbuild.yaml)
}
