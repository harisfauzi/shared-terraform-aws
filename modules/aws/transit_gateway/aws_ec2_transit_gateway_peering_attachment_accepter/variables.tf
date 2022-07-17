variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "transit_gateway_attachment_id" {
  description = "The ID of the EC2 Transit Gateway Peering Attachment to manage."
  type        = string
}

variable "tags" {
  description = "tags"
  type        = map(string)
  default     = {}
}