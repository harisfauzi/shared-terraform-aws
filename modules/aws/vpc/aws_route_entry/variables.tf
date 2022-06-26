variable "create_this" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "route_table_id" {
  description = "The Route Table ID."
  type        = string
}

variable "destination_cidr_block" {
  description = "The Destination CIDR Block (IPv4)."
  type        = string
  default     = null
}

variable "destination_ipv6_cidr_block" {
  description = "The Destination CIDR Block (IPv6)."
  type        = string
  default     = null
}

variable "destination_prefix_list_id" {
  description = "The destination managed prefix list ID."
  type        = string
  default     = null
}

variable "carrier_gateway_id" {
  description = "The carrier gateway ID."
  type        = string
  default     = null
}

variable "core_network_arn" {
  description = "The core network ARN."
  type        = string
  default     = null
}

variable "egress_only_gateway_id" {
  description = "The egress only gateway ID (for IPv6)."
  type        = string
  default     = null
}

variable "gateway_id" {
  description = "The (Internet) Gateway ID."
  type        = string
  default     = null
}

variable "instance_id" {
  description = "The (NAT) instance ID."
  type        = string
  default     = null
}

variable "nat_gateway_id" {
  description = "The NAT Gateway ID."
  type        = string
  default     = null
}

variable "local_gateway_id" {
  description = "The local gateway ID."
  type        = string
  default     = null
}

variable "network_interface_id" {
  description = "The network interface ID."
  type        = string
  default     = null
}

variable "transit_gateway_id" {
  description = "The transit gateway ID."
  type        = string
  default     = null
}

variable "vpc_endpoint_id" {
  description = "The VPC endpoint ID."
  type        = string
  default     = null
}

variable "vpc_peering_connection_id" {
  description = "The VPC peering connection ID."
  type        = string
  default     = null
}
