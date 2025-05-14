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
| [google_redis_instance.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/redis_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_memory_size_gb"></a> [memory\_size\_gb](#input\_memory\_size\_gb) | Taille mémoire Redis (en Go) | `number` | `1` | no |
| <a name="input_network"></a> [network](#input\_network) | Self-link du VPC autorisé (doit être privé) | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID du projet GCP | `string` | n/a | yes |
| <a name="input_redis_name"></a> [redis\_name](#input\_redis\_name) | Nom de l'instance Redis | `string` | n/a | yes |
| <a name="input_redis_tier"></a> [redis\_tier](#input\_redis\_tier) | Tier Redis (BASIC ou STANDARD\_HA) | `string` | `"BASIC"` | no |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | Version de Redis | `string` | `"REDIS_6_X"` | no |
| <a name="input_region"></a> [region](#input\_region) | Région de déploiement Redis (doit être la même que Cloud Run) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_host"></a> [host](#output\_host) | Adresse IP privée de Redis (pour Cloud Run) |
| <a name="output_port"></a> [port](#output\_port) | Port d'accès à Redis |
<!-- END_TF_DOCS -->