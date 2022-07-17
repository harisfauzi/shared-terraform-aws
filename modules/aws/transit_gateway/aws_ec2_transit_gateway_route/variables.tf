variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "destination_cidr_block" {
  description = "destination_cidr_block"
  type        = string
}

variable "transit_gateway_attachment_id" {
  description = "transit_gateway_attachment_id"
  type        = string
  default     = null
}

variable "blackhole" {
  description = "blackhole"
  type        = bool
  default     = null
}

variable "transit_gateway_route_table_id" {
  description = "transit_gateway_route_table_id"
  type        = string
}
