variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "subnet_ids" {
  description = "subnet_ids"
  type        = list(string)
}

variable "transit_gateway_id" {
  description = "transit_gateway_id"
  type        = string
}

variable "vpc_id" {
  description = "vpc_id"
  type        = string
}

variable "appliance_mode_support" {
  description = "appliance_mode_support"
  type        = string
  default     = null
}

variable "dns_support" {
  description = "dns_support"
  type        = string
  default     = null
}

variable "ipv6_support" {
  description = "ipv6_support"
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