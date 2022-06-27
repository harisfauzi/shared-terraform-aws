variable "create_this" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "Route Table name"
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
  type        = map(string)
  default     = null
}

variable "egress" {
  description = "The egress rule."
  type        = map(string)
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}