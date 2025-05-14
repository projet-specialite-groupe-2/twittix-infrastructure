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
| [google_cloud_run_service.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_service) | resource |
| [google_cloud_run_service_iam_member.invoker](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_service_iam_member) | resource |
| [google_cloudbuild_trigger.cloudrun_build](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudbuild_trigger) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_build_name"></a> [build\_name](#input\_build\_name) | n/a | `string` | n/a | yes |
| <a name="input_container_image"></a> [container\_image](#input\_container\_image) | Image Docker à déployer | `string` | n/a | yes |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Nom du service Cloud Run | `string` | n/a | yes |
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | n/a | `number` | `8080` | no |
| <a name="input_egress_setting"></a> [egress\_setting](#input\_egress\_setting) | Sortie du trafic depuis le VPC connector | `string` | `"ALL_TRAFFIC"` | no |
| <a name="input_filename"></a> [filename](#input\_filename) | Nom du fichier cloudbuild.yaml | `string` | n/a | yes |
| <a name="input_invoker_members"></a> [invoker\_members](#input\_invoker\_members) | Liste des comptes IAM ayant accès au service | `list(string)` | <pre>[<br/>  "allUsers"<br/>]</pre> | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Région de déploiement | `string` | n/a | yes |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | n/a | <pre>list(object({<br/>    name        = string<br/>    secret_name = string<br/>    secret_key  = string<br/>  }))</pre> | `null` | no |
| <a name="input_service_account_email"></a> [service\_account\_email](#input\_service\_account\_email) | Email du service account à utiliser | `string` | n/a | yes |
| <a name="input_vpc_connector"></a> [vpc\_connector](#input\_vpc\_connector) | Nom complet du VPC connector | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_build_trigger_id"></a> [build\_trigger\_id](#output\_build\_trigger\_id) | ID du déclencheur Cloud Build (si utilisé) |
| <a name="output_service_id"></a> [service\_id](#output\_service\_id) | ID du service Cloud Run |
| <a name="output_service_location"></a> [service\_location](#output\_service\_location) | Région du service |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Nom du service Cloud Run |
| <a name="output_service_url"></a> [service\_url](#output\_service\_url) | URL publique du service Cloud Run |
<!-- END_TF_DOCS -->