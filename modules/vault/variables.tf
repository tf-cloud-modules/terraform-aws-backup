variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the backup vault to create."
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "kms_key_arn" {
  description = "The server-side encryption key that is used to protect your backups."
  type        = string
  default     = null
}
