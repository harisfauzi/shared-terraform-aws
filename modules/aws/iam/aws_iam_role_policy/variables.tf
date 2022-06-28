variable "create_this" {
  description = "Controls if Route Table should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "The name of the role policy."
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "Creates a unique friendly name beginning with the specified prefix."
  type        = string
  default     = null
}

variable "policy" {
  description = "The JSON formatted string inline policy document."
  type        = string
}

variable "role" {
  description = "The IAM role to attach to the policy."
  type        = string
}
