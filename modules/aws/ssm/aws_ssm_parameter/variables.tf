variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "name"
  type        = string
}

variable "type" {
  description = "type"
  type        = string
}

variable "value" {
  description = "value"
  type        = string
}

variable "description" {
  description = "description"
  type        = string
  default     = null
}

variable "tier" {
  description = "tier"
  type        = string
  default     = null
}

variable "key_id" {
  description = "key_id"
  type        = string
  default     = null
}

variable "overwrite" {
  description = "overwrite"
  type        = bool
  default     = null
}

variable "allowed_pattern" {
  description = "allowed_pattern"
  type        = string
  default     = null
}

variable "data_type" {
  description = "data_type"
  type        = string
  default     = null
}

variable "tags" {
  description = "tags"
  type        = map(string)
  default     = {}
}