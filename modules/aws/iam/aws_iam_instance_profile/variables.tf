variable "create_this" {
  description = "Controls if Route Table should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the instance profile."
  type        = string
  default     = null
}

variable "role" {
  description = "Name of the role to add to the profile."
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "Creates a unique friendly name beginning with the specified prefix."
  type        = string
  default     = null
}

variable "path" {
  description = "Path to the instance profile."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}