variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "Route Table name"
  type        = string
  default     = ""
}

variable "traffic_type" {
  description = "traffic_type"
  type        = string
  default     = "ALL"
}

variable "eni_id" {
  description = "eni_id"
  type        = string
  default     = null
}

variable "iam_role_arn" {
  description = "iam_role_arn"
  type        = string
  default     = null
}

variable "log_destination_type" {
  description = "log_destination_type"
  type        = string
  default     = null
}

variable "log_destination" {
  description = "log_destination"
  type        = string
  default     = null
}

variable "log_group_name" {
  description = "log_group_name"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "subnet_id"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "vpc_id"
  type        = string
  default     = null
}

variable "log_format" {
  description = "log_format"
  type        = string
  default     = null
}

variable "max_aggregation_interval" {
  description = "max_aggregation_interval"
  type        = number
  default     = null
}

variable "destination_options" {
  description = "destination_options"
  type = list(object({
    file_format                = optional(string)
    hive_compatible_partitions = optional(bool)
    per_hour_partition         = optional(bool)
  }))
  default = []
}

variable "tags" {
  description = "tags"
  type        = map(string)
  default     = {}
}