variable "create_this" {
  description = "Controls if Resource Share should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "Resource Share name"
  type        = string
  default     = ""
}

variable "allow_external_principals" {
  description = "allow_external_principals"
  type        = bool
  default     = false
}

variable "permission_arns" {
  description = "permission_arns"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "tags"
  type        = map(string)
  default     = {}
}