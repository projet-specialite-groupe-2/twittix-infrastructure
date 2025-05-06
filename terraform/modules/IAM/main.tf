resource "google_project_iam_member" "role_bindings" {
  for_each = var.iam_bindings

  project = var.project_id
  role    = each.value.role
  member  = each.value.member
}