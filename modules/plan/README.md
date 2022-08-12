# AWS Backup Plan Terraform module

## Usage

```hcl
module "plan" {
  source  = "tf-cloud-modules/plan/aws"
  name = "test"
  rules = [{
    completion_window        = 480
    enable_continuous_backup = false
    recovery_point_tags      = {}
    rule_name                = "test"
    schedule                 = "cron(0 1 ? * * *)"
    start_window             = 60
    target_vault_name        = "test"
    lifecycle = {
      cold_storage_after = 0
      delete_after       = 3
    }
    copy_action = {
      destination_vault_arn = "arn:aws:backup:us-east-1:XXXXXXX:backup-vault:Default"
      lifecycle = {
        cold_storage_after = 0
        delete_after       = 3
      }
    }
  }]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.17.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.25.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_backup_plan.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_plan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the backup plan to create. | `string` | n/a | yes |
| <a name="input_rules"></a> [rules](#input\_rules) | A list of rule objects that specifies scheduled tasks that are used to back up a selection of resources. | `any` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the backup plan. |
| <a name="output_id"></a> [id](#output\_id) | The Id of the backup plan. |
| <a name="output_name"></a> [name](#output\_name) | The display name of a backup plan. |
| <a name="output_version"></a> [version](#output\_version) | Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan. |
<!-- END_TF_DOCS -->