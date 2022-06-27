variable "create_this" {
  description = "Controls if Network ACL should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "network_acl_id" {
  description = "The Network ACL ID."
  type        = string
}

variable "rule_number" {
  description = "Rule number."
  type        = number
  default     = 0
}

variable "rule_action" {
  description = "The rule action."
  type        = string
  default     = "deny"
}

variable "protocol" {
  description = "The IP protocol."
  type        = number
  default     = -1
}

variable "direction" {
  description = "The direction (egress/ingress)."
  type        = string
  default     = "ingress"
}

variable "cidr_block" {
  description = "IPv4 CIDR block to allow/deny."
  type        = string
  default     = null
}

variable "ipv6_cidr_block" {
  description = "IPv6 CIDR block to allow/deny."
  type        = string
  default     = null
}

variable "from_port" {
  description = "The from port to match."
  type        = number
  default     = null
}

variable "to_port" {
  description = "The to port to match."
  type        = number
  default     = null
}

variable "icmp_type" {
  description = "ICMP protocol: The ICMP type."
  type        = number
  default     = null
}

variable "icmp_code" {
  description = "ICMP protocol: The ICMP code."
  type        = number
  default     = null
}
