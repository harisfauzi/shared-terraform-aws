variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "transit_gateway_id" {
  description = "transit_gateway_id"
  type        = string
}

variable "transport_attachment_id" {
  description = "transport_attachment_id"
  type        = string
}

variable "protocol" {
  description = "protocol"
  type        = string
  default     = null
}

variable "transit_gateway_default_route_table_association" {
  description = "transit_gateway_default_route_table_association"
  type        = bool
  default     = null
}

variable "transit_gateway_default_route_table_propagation" {
  description = "transit_gateway_default_route_table_propagation"
  type        = bool
  default     = null
}

variable "tags" {
  description = "tags"
  type        = map(string)
  default     = {}
}