variable "create_this" {
  description = "Controls if IAM Role should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "Friendly name of the role."
  type        = string
  default     = null
}

variable "assume_role_policy" {
  description = "Policy that grants an entity permission to assume the role."
  type        = string
}

variable "description" {
  description = "Description of the role."
  type        = string
  default     = null
}

variable "force_detach_policies" {
  description = "Whether to force detaching any policies the role has before destroying it."
  type        = bool
  default     = null
}

variable "inline_policies" {
  description = "Configuration block defining an exclusive set of IAM inline policies associated with the IAM role."
  type = list(object({
    name    = string,
    policy  = string
  }))
  default   = []
}

variable "managed_policy_arns" {
  description = " Set of exclusive IAM managed policy ARNs to attach to the IAM role."
  type        = list(string)
  default     = []
}

variable "max_session_duration" {
  description = "Maximum session duration (in seconds) that you want to set for the specified role."
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "Creates a unique friendly name beginning with the specified prefix."
  type        = string
  default     = null
}

variable "path" {
  description = "Path to the role."
  type        = string
  default     = null
}

variable "permissions_boundary" {
  description = "ARN of the policy that is used to set the permissions boundary for the role."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}