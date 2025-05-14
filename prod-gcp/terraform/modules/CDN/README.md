<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_backend_bucket.compute_backend_bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_bucket) | resource |
| [google_compute_global_address.cdn_reserved_ip](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_address) | resource |
| [google_compute_global_forwarding_rule.cdn_forwarding_rule](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_forwarding_rule) | resource |
| [google_compute_target_http_proxy.cdn_http_proxy](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_target_http_proxy) | resource |
| [google_compute_url_map.cdn_url_map](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cdn_http_proxy_name"></a> [cdn\_http\_proxy\_name](#input\_cdn\_http\_proxy\_name) | Name of the CDN HTTP proxy. | `string` | n/a | yes |
| <a name="input_cdn_url_map_name"></a> [cdn\_url\_map\_name](#input\_cdn\_url\_map\_name) | Name of the CDN URL map. | `string` | n/a | yes |
| <a name="input_compute_backend_bucket_description"></a> [compute\_backend\_bucket\_description](#input\_compute\_backend\_bucket\_description) | Description of the compute backend bucket. | `string` | n/a | yes |
| <a name="input_compute_backend_bucket_name"></a> [compute\_backend\_bucket\_name](#input\_compute\_backend\_bucket\_name) | Name of the compute backend bucket. | `string` | n/a | yes |
| <a name="input_forwarding_rule_lb_type"></a> [forwarding\_rule\_lb\_type](#input\_forwarding\_rule\_lb\_type) | Load balancer type for the forwarding rule (e.g., HTTP, HTTPS, TCP). | `string` | n/a | yes |
| <a name="input_forwarding_rule_name"></a> [forwarding\_rule\_name](#input\_forwarding\_rule\_name) | Name of the forwarding rule. | `string` | n/a | yes |
| <a name="input_forwarding_rule_protocol"></a> [forwarding\_rule\_protocol](#input\_forwarding\_rule\_protocol) | Protocol used by the forwarding rule (e.g., TCP, UDP). | `string` | n/a | yes |
| <a name="input_reserved_ip_name"></a> [reserved\_ip\_name](#input\_reserved\_ip\_name) | Name of the reserved IP address. | `string` | n/a | yes |
| <a name="input_storage_bucket_name"></a> [storage\_bucket\_name](#input\_storage\_bucket\_name) | Name of the storage bucket. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->