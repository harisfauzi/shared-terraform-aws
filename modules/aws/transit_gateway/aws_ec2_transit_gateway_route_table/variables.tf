variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "transit_gateway_id" {
  description = "transit_gateway_id"
  type        = string
}

variable "tags" {
  description = "tags"
  type        = map(string)
  default     = {}
}