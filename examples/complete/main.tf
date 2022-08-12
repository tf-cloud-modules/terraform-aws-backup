provider "aws" {
}

module "vault" {
  source = "../../modules/vault"
  name   = var.vault_name
}

module "plan" {
  source = "../../modules/plan"
  name   = var.plan_name
  rules = [{
    completion_window        = 480
    enable_continuous_backup = false
    recovery_point_tags      = {}
    rule_name                = "test"
    schedule                 = "cron(0 1 ? * * *)"
    start_window             = 60
    target_vault_name        = module.vault.id
    lifecycle = {
      cold_storage_after = 0
      delete_after       = 3
    }
  }]
  backup_selection = [{
    name      = "test"
    resources = ["*"]
    condition = [{
      string_equals = [{
        key   = "aws:ResourceTag/env"
        value = "test"
      }]
    }]
  }]
}
