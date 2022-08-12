variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the backup plan to create."
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "rules" {
  description = "A list of rule objects that specifies scheduled tasks that are used to back up a selection of resources."
  type        = any
  default     = []
}

variable "backup_selection" {
  description = "A list of objects that selects resources for backing up."
  type        = any
  default     = []
}