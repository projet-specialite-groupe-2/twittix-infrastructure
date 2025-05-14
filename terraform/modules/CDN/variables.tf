variable "reserved_ip_name" {
  type        = string
  description = "Name of the reserved IP address."
}

variable "forwarding_rule_name" {
  type        = string
  description = "Name of the forwarding rule."
}

variable "forwarding_rule_protocol" {
  type        = string
  description = "Protocol used by the forwarding rule (e.g., TCP, UDP)."
}

variable "forwarding_rule_lb_type" {
  type        = string
  description = "Load balancer type for the forwarding rule (e.g., HTTP, HTTPS, TCP)."
}

variable "cdn_http_proxy_name" {
  type        = string
  description = "Name of the CDN HTTP proxy."
}

variable "cdn_url_map_name" {
  type        = string
  description = "Name of the CDN URL map."
}

variable "compute_backend_bucket_name" {
  type        = string
  description = "Name of the compute backend bucket."
}

variable "storage_bucket_name" {
  type        = string
  description = "Name of the storage bucket."
}

variable "compute_backend_bucket_description" {
  type        = string
  description = "Description of the compute backend bucket."
}