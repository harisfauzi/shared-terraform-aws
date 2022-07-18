variable "create_this" {
  description = "Controls if IAM Role should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "repository_name" {
  description = "The name for the repository."
  type        = string
}

variable "name" {
  description = "The name of the trigger."
  type        = string
}

variable "destination_arn" {
  description = "The ARN of the resource that is the target for a trigger."
  type        = string
}

variable "custom_data" {
  description = "Any custom data associated with the trigger that will be included in the information sent to the target of the trigger."
  type        = bool
  default     = null
}

variable "branches" {
  description = "The branches that will be included in the trigger configuration."
  type        = list(string)
  default     = []
}

variable "events" {
  description = "The repository events that will cause the trigger to run actions in another service."
  type        = list(string)
  default     = []
}
