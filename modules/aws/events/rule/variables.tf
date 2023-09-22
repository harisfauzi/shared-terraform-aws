variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "(Optional) The name of the rule."
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix."
  type        = string
  default     = null
}

variable "schedule_expression" {
  description = "(Optional) The scheduling expression."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) The description of the rule."
  type        = string
  default     = null
}

variable "event_bus_name" {
  description = "(Optional) The name or ARN of the event bus to associate with this rule."
  type        = string
  default     = null
}

variable "event_pattern" {
  description = "(Optional) The event pattern described a JSON object"
  type        = string
  default     = null
}

variable "role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) associated with the role that is used for target invocation."
  type        = string
  default     = null
}

variable "is_enabled" {
  description = "(Optional) Whether the rule should be enabled."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
