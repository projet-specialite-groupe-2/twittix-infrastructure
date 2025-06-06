module "cdn_static_assets" {
  source                     = "./modules/cdn"

  reserved_ip_name           = "cdn-twittix-ip"
  forwarding_rule_name       = "cdn-twittix-forwarding"
  forwarding_rule_protocol   = "TCP"
  forwarding_rule_lb_type    = "EXTERNAL"

  cdn_http_proxy_name        = "cdn-twittix-http-proxy"
  cdn_url_map_name           = "cdn-twittix-url-map"

  compute_backend_bucket_name        = "twittix-backend"
  compute_backend_bucket_description = "Backend Bucket for Twittix with CDN"
  storage_bucket_name                = module.bucket_static_assets.bucket_name
}