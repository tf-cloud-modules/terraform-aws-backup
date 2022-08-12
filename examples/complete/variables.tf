variable "vault_name" {
  description = "The display name of a resource selection document."
  type        = string
  default     = "test"
}

variable "plan_name" {
  description = "Name of the backup plan to create."
  type        = string
  default     = "test"
}