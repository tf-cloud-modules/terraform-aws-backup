resource "aws_backup_vault" "this" {
  count = var.create ? 1 : 0

  name          = var.name
  kms_key_arn   = var.kms_key_arn
  force_destroy = var.force_destroy
  region        = var.region
  tags          = var.tags
}