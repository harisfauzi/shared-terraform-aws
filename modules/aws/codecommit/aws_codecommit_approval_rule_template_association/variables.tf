variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "approval_rule_template_name" {
  description = "The name for the approval rule template."
  type        = string
  default     = null
}

variable "repository_name" {
  description = "The name of the repository that you want to associate with the template."
  type        = string
}
