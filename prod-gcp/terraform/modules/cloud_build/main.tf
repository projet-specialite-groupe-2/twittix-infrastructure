resource "google_cloudbuild_trigger" "default" {
  name     = var.trigger_name
  filename = var.build_config_file
  project  = var.project_id

  github {
    owner = var.repo_owner
    name  = var.repo_name

    push {
      branch = var.branch_regex
    }
  }
}