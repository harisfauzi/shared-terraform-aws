variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "repository_name" {
  description = "The name for the repository."
  type        = string
}

variable "description" {
  description = "Description of the role."
  type        = string
  default     = null
}

variable "default_branch" {
  description = "The default branch of the repository."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}