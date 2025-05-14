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
| [google_storage_bucket.buckets](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |
| [google_storage_bucket_iam_member.bucket_iam_management](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_force_destroy"></a> [bucket\_force\_destroy](#input\_bucket\_force\_destroy) | Bucket destroy policy | `bool` | n/a | yes |
| <a name="input_bucket_level_access"></a> [bucket\_level\_access](#input\_bucket\_level\_access) | Uniform permissions management | `bool` | n/a | yes |
| <a name="input_bucket_location"></a> [bucket\_location](#input\_bucket\_location) | GCS location | `string` | n/a | yes |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Bucket FQDN name | `string` | n/a | yes |
| <a name="input_bucket_storage_class"></a> [bucket\_storage\_class](#input\_bucket\_storage\_class) | GCP storage class of bucket | `string` | n/a | yes |
| <a name="input_iam_management_member"></a> [iam\_management\_member](#input\_iam\_management\_member) | Bucket member selector for permission management | `string` | n/a | yes |
| <a name="input_iam_management_role"></a> [iam\_management\_role](#input\_iam\_management\_role) | Bucket role selector for permission management | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | n/a |
| <a name="output_object_id"></a> [object\_id](#output\_object\_id) | n/a |
<!-- END_TF_DOCS -->