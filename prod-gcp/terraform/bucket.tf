module "bucket_static_assets" {
  source                  = "./modules/bucket"
  project_id              = var.project_id
  bucket_name             = "twittix"
  bucket_location         = var.region
  bucket_force_destroy    = true
  bucket_storage_class    = "STANDARD"
  bucket_level_access     = true

  iam_management_role     = "roles/storage.objectViewer"
  iam_management_member   = "allUsers"
}