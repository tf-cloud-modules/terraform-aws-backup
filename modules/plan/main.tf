resource "aws_backup_plan" "this" {
  count = var.create ? 1 : 0
  name  = var.name
  tags  = var.tags

  dynamic "rule" {
    for_each = var.rules
    content {
      completion_window        = lookup(rule.value, "completion_window", null)
      enable_continuous_backup = lookup(rule.value, "enable_continuous_backup", null)
      recovery_point_tags      = lookup(rule.value, "recovery_point_tags", null)
      rule_name                = lookup(rule.value, "rule_name")
      schedule                 = lookup(rule.value, "schedule", null)
      start_window             = lookup(rule.value, "start_window", null)
      target_vault_name        = lookup(rule.value, "target_vault_name")

      dynamic "lifecycle" {
        for_each = lookup(rule.value, "lifecycle", null) != null ? [true] : []

        content {
          cold_storage_after = lookup(rule.value.lifecycle, "cold_storage_after", null)
          delete_after       = lookup(rule.value.lifecycle, "delete_after", null)
        }
      }
      dynamic "copy_action" {
        for_each = try(lookup(rule.value.copy_action, "destination_vault_arn", null), null) != null ? [true] : []

        content {
          destination_vault_arn = lookup(rule.value.copy_action, "destination_vault_arn", null)

          dynamic "lifecycle" {
            for_each = try(lookup(rule.value.copy_action, "lifecycle", null), null) != null ? [true] : []
            content {
              cold_storage_after = lookup(rule.value.copy_action.lifecycle, "cold_storage_after", null)
              delete_after       = lookup(rule.value.copy_action.lifecycle, "delete_after", null)
            }
          }
        }
      }
    }
  }
}


data "aws_caller_identity" "current" {}

resource "aws_backup_selection" "this" {
  for_each      = var.create ? { for k, v in var.backup_selection : k => v } : {}
  iam_role_arn  = try(each.value.iam_role_arn, "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/service-role/AWSBackupDefaultServiceRole")
  name          = each.value.name
  plan_id       = aws_backup_plan.this[0].id
  not_resources = try(each.value.not_resources, [])
  resources     = try(each.value.resources, [])


  dynamic "condition" {
    for_each = lookup(each.value, "condition", [])
    content {
      dynamic "string_equals" {
        for_each = lookup(condition.value, "string_equals", [])
        content {
          key   = lookup(string_equals.value, "key", null)
          value = lookup(string_equals.value, "value", null)
        }
      }
    }
  }
}