variable "create_this" {
  description = "Controls if Route Table should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the security group."
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "The VPC ID."
  type        = string
}

variable "description" {
  description = "Security group description."
  type        = string
  default     = null
}
    content {
      from_port         = egress.value["from_port"]
      to_port           = egress.value["to_port"]
      cidr_blocks       = egress.value["cidr_blocks"]
      description       = egress.value["description"]
      ipv6_cidr_blocks  = egress.value["ipv6_cidr_blocks"]
      prefix_list_ids   = egress.value["prefix_list_ids"]
      protocol          = egress.value["protocol"]
      security_groups   = egress.value["security_groups"]
      self              = egress.value["self"]
    }
variable "egresses" {
  description = "Configuration block for egress rules."
  type        = list(object({
    from_port         = number
    to_port           = number
    cidr_blocks       = list(string)
    description       = string
    ipv6_cidr_blocks  = list(string)
    prefix_list_ids   = list(string)
    protocol          = number
    security_groups   = list(string)
    self              = string
  }))
  default     = []
}

variable "ingresses" {
  description = "Configuration block for ingress rules."
  type        = list(object({
    from_port         = number
    to_port           = number
    cidr_blocks       = list(string)
    description       = string
    ipv6_cidr_blocks  = list(string)
    prefix_list_ids   = list(string)
    protocol          = number
    security_groups   = list(string)
    self              = string
  }))
  default     = []
}

variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix."
  type        = string
  default     = null
}

variable "revoke_rules_on_delete" {
  description = "Instruct Terraform to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself."
  type        = bool
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}