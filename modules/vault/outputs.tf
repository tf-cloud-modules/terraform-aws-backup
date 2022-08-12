output "arn" {
  description = "The ARN of the vault."
  value       = try(aws_backup_vault.this[0].arn, "")
}

output "id" {
  description = "The name of the vault."
  value       = try(aws_backup_vault.this[0].id, "")
}

output "kms_key_arn" {
  description = "The server-side encryption key that is used to protect your backups."
  value       = try(aws_backup_vault.this[0].kms_key_arn, "")
}

output "tags_all" {
  description = "A map of tags assigned to the resource."
  value       = try(aws_backup_vault.this[0].tags_all, "")
}