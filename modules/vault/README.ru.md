[English](README.md) | **Русский**

# AWS Backup Vault Terraform module

## Использование

```hcl
module "vault" {
  source  = "tf-cloud-modules/backup/aws//modules/vault"
  name    = "test"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6.74.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.74.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_backup_vault.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_vault) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | A boolean that indicates that all recovery points stored in the vault are deleted so that the vault can be destroyed without error. | `bool` | `null` | no |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | The server-side encryption key that is used to protect your backups. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the backup vault to create. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region where the resources will be managed. Defaults to the Region set in the provider configuration. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the vault. |
| <a name="output_id"></a> [id](#output\_id) | The name of the vault. |
| <a name="output_kms_key_arn"></a> [kms\_key\_arn](#output\_kms\_key\_arn) | The server-side encryption key that is used to protect your backups. |
| <a name="output_tags_all"></a> [tags\_all](#output\_tags\_all) | A map of tags assigned to the resource. |
<!-- END_TF_DOCS -->
