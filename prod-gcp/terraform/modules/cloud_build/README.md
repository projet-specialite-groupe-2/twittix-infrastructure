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
| [google_cloudbuild_trigger.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudbuild_trigger) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_branch_regex"></a> [branch\_regex](#input\_branch\_regex) | Regex de la branche GitHub à surveiller (ex: ^main$) | `string` | `"^main$"` | no |
| <a name="input_build_config_file"></a> [build\_config\_file](#input\_build\_config\_file) | Chemin vers le fichier cloudbuild.yaml | `string` | `"cloudbuild.yaml"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID du projet GCP | `string` | n/a | yes |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Nom du dépôt GitHub | `string` | n/a | yes |
| <a name="input_repo_owner"></a> [repo\_owner](#input\_repo\_owner) | Propriétaire du dépôt GitHub | `string` | n/a | yes |
| <a name="input_trigger_name"></a> [trigger\_name](#input\_trigger\_name) | Nom du déclencheur Cloud Build | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_trigger_id"></a> [trigger\_id](#output\_trigger\_id) | ID du déclencheur Cloud Build |
| <a name="output_trigger_name"></a> [trigger\_name](#output\_trigger\_name) | Nom du déclencheur |
<!-- END_TF_DOCS -->