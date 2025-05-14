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
| [google_sql_database.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database) | resource |
| [google_sql_database_instance.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance) | resource |
| [google_sql_user.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | Nom de la base de données à créer | `string` | n/a | yes |
| <a name="input_database_password"></a> [database\_password](#input\_database\_password) | Mot de passe de l'utilisateur SQL | `string` | n/a | yes |
| <a name="input_database_user"></a> [database\_user](#input\_database\_user) | Nom de l'utilisateur SQL à créer | `string` | n/a | yes |
| <a name="input_database_version"></a> [database\_version](#input\_database\_version) | Version du moteur de base de données | `string` | `"POSTGRES_14"` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Nom de l'instance Cloud SQL | `string` | n/a | yes |
| <a name="input_private_network"></a> [private\_network](#input\_private\_network) | Self-link du VPC privé pour accès interne uniquement | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID du projet GCP | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Région pour l'instance Cloud SQL | `string` | n/a | yes |
| <a name="input_tier"></a> [tier](#input\_tier) | Tier de machine pour Cloud SQL (ex: db-f1-micro) | `string` | `"db-f1-micro"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_instance_id"></a> [database\_instance\_id](#output\_database\_instance\_id) | ID de l'instance Cloud SQL |
| <a name="output_instance_connection_name"></a> [instance\_connection\_name](#output\_instance\_connection\_name) | Nom de connexion Cloud SQL (pour Cloud Run) |
<!-- END_TF_DOCS -->