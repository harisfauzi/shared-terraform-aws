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

variable "egresses" {
  description = "Configuration block for egress rules."
  type        = list(any)
  default     = []
}

variable "ingresses" {
  description = "Configuration block for ingress rules."
  type        = list(any)
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