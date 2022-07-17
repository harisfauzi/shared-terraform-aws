variable "create_this" {
  description = "Controls if Resource Share should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "share_arn" {
  description = "Resource Share ARN"
  type        = string
  default     = null
}
