variable "create_this" {
  description = "Controls if Network ACL should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "Network ACL name"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "The VPC ID."
  type        = string
}

variable "subnet_ids" {
  description = "The list of subnet ids."
  type        = list(string)
  default     = null
}

variable "ingress" {
  description = "The ingress rule."
  type        = set(any)
  default     = null
}

variable "egress" {
  description = "The egress rule."
  type        = set(any)
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}