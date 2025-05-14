# reserve IP address
resource "google_compute_global_address" "cdn_reserved_ip" {
  name = var.reserved_ip_name
}

# forwarding rule
resource "google_compute_global_forwarding_rule" "cdn_forwarding_rule" {
  name                  = var.forwarding_rule_name
  ip_protocol           = var.forwarding_rule_protocol
  load_balancing_scheme = var.forwarding_rule_lb_type
  port_range            = "80"
  target                = google_compute_target_http_proxy.cdn_http_proxy.id
  ip_address            = google_compute_global_address.cdn_reserved_ip.id
}

# http proxy
resource "google_compute_target_http_proxy" "cdn_http_proxy" {
  name    = var.cdn_http_proxy_name
  url_map = google_compute_url_map.cdn_url_map.id
}

# url map
resource "google_compute_url_map" "cdn_url_map" {
  name            = var.cdn_url_map_name
  default_service = google_compute_backend_bucket.compute_backend_bucket.id
}

# backend bucket with CDN policy with default ttl settings
resource "google_compute_backend_bucket" "compute_backend_bucket" {
  name        = var.compute_backend_bucket_name
  description = var.compute_backend_bucket_description
  bucket_name = var.storage_bucket_name
  enable_cdn  = true
  cdn_policy {
    cache_mode        = "CACHE_ALL_STATIC"
    client_ttl        = 3600
    default_ttl       = 3600
    max_ttl           = 86400
    negative_caching  = true
    serve_while_stale = 86400
  }
}