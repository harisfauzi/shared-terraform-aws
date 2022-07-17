variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "amazon_side_asn" {
  description = "amazon_side_asn"
  type        = number
  default     = 64512
}

variable "auto_accept_shared_attachments" {
  description = "auto_accept_shared_attachments"
  type        = string
  default     = null
}

variable "default_route_table_association" {
  description = "default_route_table_association"
  type        = string
  default     = null
}

variable "default_route_table_propagation" {
  description = "default_route_table_propagation"
  type        = string
  default     = null
}

variable "description" {
  description = "description"
  type        = string
  default     = null
}

variable "dns_support" {
  description = "dns_support"
  type        = string
  default     = null
}

variable "transit_gateway_cidr_blocks" {
  description = "transit_gateway_cidr_blocks"
  type        = list(string)
  default     = []
}

variable "vpn_ecmp_support" {
  description = "vpn_ecmp_support"
  type        = string
  default     = null
}

variable "tags" {
  description = "tags"
  type        = map(string)
  default     = {}
}