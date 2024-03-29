variable "create_this" {
  description = "Controls if Route Table should be created (it affects almost all resources)"
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

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}