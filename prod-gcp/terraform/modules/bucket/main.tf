resource "google_storage_bucket" "buckets" {
  name          = var.bucket_name
  location      = var.bucket_location
  force_destroy = var.bucket_force_destroy
  storage_class = var.bucket_storage_class

  uniform_bucket_level_access = var.bucket_level_access
}

# make bucket public
resource "google_storage_bucket_iam_member" "bucket_iam_management" {
  bucket = google_storage_bucket.buckets.id
  role   = var.iam_management_role
  member = var.iam_management_member
}