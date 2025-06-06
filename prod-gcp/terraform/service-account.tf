resource "google_service_account" "cloud_run_service_account" {
  account_id   = "cloud-run" # Partie avant '@twittix.iam.gserviceaccount.com'
  display_name = "Service Account for Cloud Run services"
  project      = var.project_id
  description  = "Service account used by Cloud Run services to access other Google Cloud resources."
}

resource "google_service_account_iam_member" "cloud_run_sa_actas_permission" {
  service_account_id = google_service_account.cloud_run_service_account.name
  role               = "roles/iam.serviceAccountUser"
  member             = "user:boursyt@gmail.com" //mon email de mon compte GCP
}

