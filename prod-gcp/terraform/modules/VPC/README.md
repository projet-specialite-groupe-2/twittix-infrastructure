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
| [google_compute_network.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.main_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_vpc_access_connector.connector](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/vpc_access_connector) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_connector_name"></a> [connector\_name](#input\_connector\_name) | Nom du VPC Serverless Connector | `string` | `"vpc-connector-twittix"` | no |
| <a name="input_connector_region"></a> [connector\_region](#input\_connector\_region) | Région pour le VPC | `string` | n/a | yes |
| <a name="input_connector_vpc_name"></a> [connector\_vpc\_name](#input\_connector\_vpc\_name) | n/a | `string` | n/a | yes |
| <a name="input_ip_cidr_range"></a> [ip\_cidr\_range](#input\_ip\_cidr\_range) | Plage CIDR réservée pour le VPC connector. Exemple : # Ex: 10.8.0.0/28. | `string` | `"10.8.0.0/28"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID du projet GCP | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Région pour le sous-réseau | `string` | n/a | yes |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | CIDR du sous-réseau | `string` | `"10.10.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Nom du VPC | `string` | `"twittix-vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | ID du sous-réseau |
| <a name="output_subnet_name"></a> [subnet\_name](#output\_subnet\_name) | Nom du sous-réseau |
| <a name="output_vpc_connector_self_link"></a> [vpc\_connector\_self\_link](#output\_vpc\_connector\_self\_link) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ID du VPC |
| <a name="output_vpc_self_link"></a> [vpc\_self\_link](#output\_vpc\_self\_link) | Self link du VPC |
<!-- END_TF_DOCS -->