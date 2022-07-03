variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "inside_cidr_blocks" {
  description = "inside_cidr_blocks"
  type        = list(string)
}

variable "peer_address" {
  description = "peer_address"
  type        = string
}

variable "transit_gateway_attachment_id" {
  description = "transit_gateway_attachment_id"
  type        = string
}

variable "bgp_asn" {
  description = "bgp_asn"
  type        = string
  default     = null
}

variable "transit_gateway_address" {
  description = "transit_gateway_address"
  type        = string
  default     = ""
}

variable "tags" {
  description = "tags"
  type        = map(string)
  default     = {}
}