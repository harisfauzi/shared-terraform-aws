variable "create_this" {
  description = "Controls if the resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "name"
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "name_prefix"
  type        = string
  default     = null
}

variable "retention_in_days" {
  description = "retention_in_days"
  type        = number
  default     = 1
}

variable "kms_key_id" {
  description = "kms_key_id"
  type        = string
  default     = null
}

variable "tags" {
  description = "tags"
  type        = map(string)
  default     = {}
}