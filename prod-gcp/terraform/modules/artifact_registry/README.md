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
| [google_artifact_registry_repository.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository) | resource |
| [google_artifact_registry_repository_iam_member.writer](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_build_sa"></a> [cloud\_build\_sa](#input\_cloud\_build\_sa) | Adresse e-mail du service account Cloud Build à qui accorder les droits d'écriture | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description du dépôt | `string` | `""` | no |
| <a name="input_format"></a> [format](#input\_format) | Format du registre (DOCKER, MAVEN, NPM, etc.) | `string` | `"DOCKER"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID du projet GCP | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Région du registre (ex: europe-west1) | `string` | n/a | yes |
| <a name="input_repository_id"></a> [repository\_id](#input\_repository\_id) | Nom du dépôt Artifact Registry | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repository_name"></a> [repository\_name](#output\_repository\_name) | Nom du registre Artifact Registry |
| <a name="output_repository_url"></a> [repository\_url](#output\_repository\_url) | URL du registre Docker |
<!-- END_TF_DOCS -->