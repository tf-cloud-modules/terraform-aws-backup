# Complete AWS Backup Example

Configuration in this directory creates AWS Backup resources with following features:

- AWS Backup Vault
- AWS Backup Plan

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_plan"></a> [plan](#module\_plan) | ../../modules/plan | n/a |
| <a name="module_vault"></a> [vault](#module\_vault) | ../../modules/vault | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_plan_name"></a> [plan\_name](#input\_plan\_name) | Name of the backup plan to create. | `string` | `"test"` | no |
| <a name="input_vault_name"></a> [vault\_name](#input\_vault\_name) | The display name of a resource selection document. | `string` | `"test"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->