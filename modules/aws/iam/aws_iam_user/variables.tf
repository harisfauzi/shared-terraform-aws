variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "The user's name."
  type        = string
  default     = null
}

variable "path" {
  description = "Path in which to create the user."
  type        = string
  default     = null
}

variable "permissions_boundary" {
  description = "The ARN of the policy that is used to set the permissions boundary for the user."
  type        = string
  default     = null
}

variable "foce_destroy" {
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. "
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}