output "arn" {
  description = "The ARN of the backup plan."
  value       = try(aws_backup_plan.this[0].arn, "")
}

output "id" {
  description = "The Id of the backup plan."
  value       = try(aws_backup_plan.this[0].id, "")
}

output "name" {
  description = "The display name of a backup plan."
  value       = try(aws_backup_plan.this[0].name, "")
}

output "version" {
  description = "Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan."
  value       = try(aws_backup_plan.this[0].version, "")
}
