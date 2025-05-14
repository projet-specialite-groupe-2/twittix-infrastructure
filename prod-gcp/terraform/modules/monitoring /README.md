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
| [google_logging_project_sink.log_sink](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/logging_project_sink) | resource |
| [google_monitoring_alert_policy.cpu_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.ram_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.redis_memory_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.sql_storage_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_destination"></a> [destination](#input\_destination) | Destination du log sink (Cloud Storage, BigQuery ou Pub/Sub) | `string` | n/a | yes |
| <a name="input_filter"></a> [filter](#input\_filter) | Filtre pour les logs à exporter | `string` | `""` | no |
| <a name="input_notification_channels"></a> [notification\_channels](#input\_notification\_channels) | Liste des canaux de notification (emails, etc.) pour les alertes | `list(string)` | `[]` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID du projet GCP | `string` | n/a | yes |
| <a name="input_sink_name"></a> [sink\_name](#input\_sink\_name) | Nom du log sink | `string` | `"twittix-log-sink"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->