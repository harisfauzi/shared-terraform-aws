variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "prefix_list_id" {
  description = "Identifier of EC2 Prefix List."
  type        = string
}

variable "transit_gateway_route_table_id" {
  description = "Identifier of EC2 Transit Gateway Route Table."
  type        = string
}

variable "blackhole" {
  description = "Indicates whether to drop traffic that matches the Prefix List."
  type        = string
  default     = null
}

variable "transit_gateway_attachment_id" {
  description = "Identifier of EC2 Transit Gateway Attachment."
  type        = string
  default     = null
}
