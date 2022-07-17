variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "Transit Gateway Peering Attachment name"
  type        = string
  default     = ""
}

variable "peer_region" {
  description = "Region of EC2 Transit Gateway to peer with."
  type        = string
}

variable "peer_transit_gateway_id" {
  description = "Identifier of EC2 Transit Gateway to peer with."
  type        = string
  default     = ""
}

variable "transit_gateway_id" {
  description = "Identifier of EC2 Transit Gateway."
  type        = string
}

variable "peer_account_id" {
  description = "Account ID of EC2 Transit Gateway to peer with."
  type        = string
  default     = null
}

variable "tags" {
  description = "tags"
  type        = map(string)
  default     = {}
}