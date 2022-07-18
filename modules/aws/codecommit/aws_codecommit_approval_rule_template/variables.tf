variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "The name for the approval rule template."
  type        = string
}

variable "content" {
  description = "The content of the approval rule template."
  type        = string
}

variable "description" {
  description = "The description of the approval rule template."
  type        = string
  default     = null
}
