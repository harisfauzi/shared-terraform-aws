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

variable "assign_ipv6_address_on_creation" {
  description = "Indicate that network interfaces created in the specified subnet should be assigned an IPv6 address."
  type        = bool
  default     = null
}

variable "availability_zone" {
  description = "AZ for the subnet."
  type        = string
  default     = null
}

variable "availability_zone_id" {
  description = "AZ ID of the subnet."
  type        = string
  default     = null
}

variable "cidr_block" {
  description = "The IPv4 CIDR block for the subnet."
  type        = string
  default     = null
}

variable "ipv6_cidr_block" {
  description = "The IPv6 network range for the subnet, in CIDR notation."
  type        = string
  default     = null
}

variable "ipv6_native" {
  description = "Indicates whether to create an IPv6-only subnet."
  type        = bool
  default     = null
}

variable "customer_owned_ipv4_pool" {
  description = "The customer owned IPv4 address pool."
  type        = string
  default     = null
}

variable "enable_dns64" {
  description = "Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations."
  type        = bool
  default     = null
}

variable "enable_resource_name_dns_aaaa_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  type        = bool
  default     = null
}

variable "enable_resource_name_dns_a_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  type        = bool
  default     = null
}

variable "map_customer_owned_ip_on_launch" {
  description = "Indicate that network interfaces created in the subnet should be assigned a customer owned IP address."
  type        = bool
  default     = null
}

variable "map_public_ip_on_launch" {
  description = "Indicate that instances launched into the subnet should be assigned a public IP address."
  type        = bool
  default     = null
}

variable "outpost_arn" {
  description = "The ARN of the Outpost."
  type        = string
  default     = null
}

variable "private_dns_hostname_type_on_launch" {
  description = "The type of hostnames to assign to instances in the subnet at launch."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}


variable "network_acl_id" {
  description = "The Network ACL ID."
  type        = string
  default     = null
}

variable "route_table_id" {
  description = "The Route Table ID."
  type        = string
  default     = null
}
