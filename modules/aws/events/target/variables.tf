variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "arn" {
  description = "The Amazon Resource Name (ARN) of the target."
  type        = string
}

variable "rule" {
  description = "The name of the rule you want to add targets to."
  type        = string
}

variable "batch_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon Batch Job."
  type = list(object({
    job_definition = string
    job_name       = string
    array_size     = number
    job_attempts   = number
  }))
  default = []
}

variable "dead_letter_config" {
  description = "(Optional) Parameters used when you are providing a dead letter config."
  type = list(object({
    arn = optional(string)
  }))
  default = []
}

variable "ecs_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke Amazon ECS Task."
  type = list(object({
    task_definition_arn = string
    capacity_provider_strategy = optional(list(object({
      capacity_provider = string
      weight            = number
      base              = string
    })))
    enable_ecs_managed_tags = optional(bool)
    enable_execute_command  = optional(bool)
    group                   = optional(string)
    launch_type             = optional(string)
    network_configuration = optional(list(object({
      subnets          = list(string)
      security_groups  = optional(list(string))
      assign_public_ip = optional(string)
    })))
    ordered_placement_strategy = optional(list(object({
      type  = string
      field = optional(string)
    })))
    placement_constraint = optional(list(object({
      type       = string
      expression = optional(string)
    })))
    platform_version = optional(string)
    propagate_tags   = optional(string)
    task_count       = optional(number)
    tags             = optional(map(string))
  }))
  default = []
}

variable "event_bus_name" {
  description = "(Optional) The name or ARN of the event bus to associate with the rule."
  type        = string
  default     = null
}

variable "http_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an API Gateway REST endpoint."
  type = list(object({
    header_parameters       = optional(map(string))
    path_parameter_values   = optional(list(string))
    query_string_parameters = optional(map(string))
  }))
  default = []
}

variable "input" {
  description = "(Optional) Valid JSON text passed to the target."
  type        = string
  default     = null
}

variable "input_path" {
  description = "(Optional) The value of the JSONPath that is used for extracting part of the matched event when passing it to the targe"
  type        = string
  default     = null
}

variable "input_transformer" {
  description = "(Optional) Parameters used when you are providing a custom input to a target based on certain event data."
  type = list(object({
    input_template = string
    input_paths    = optional(map(string))
  }))
  default = []
}

variable "kinesis_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon Kinesis Stream."
  type = list(object({
    partition_key_path = optional(string)
  }))
  default = []
}

variable "role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered."
  type        = string
  default     = null
}

variable "run_command_targets" {
  description = " (Optional) Parameters used when you are using the rule to invoke Amazon EC2 Run Command."
  type = list(object({
    key    = string
    values = list(string)
  }))
  default = []
}

variable "redshift_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon Redshift Statement."
  type = list(object({
    database            = string
    db_user             = optional(string)
    secrets_manager_arn = optional(string)
    sql                 = optional(string)
    statement_name      = optional(string)
    with_event          = optional(bool)
  }))
  default = []
}

variable "retry_policy" {
  description = "(Optional) Parameters used when you are providing retry policies."
  type = list(object({
    maximum_event_age_in_seconds = optional(number)
    maximum_retry_attempts       = optional(number)
  }))
  default = []
}

variable "sagemaker_pipeline_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon SageMaker Pipeline."
  type = list(object({
    pipeline_parameter_list = optional(list(object({
      name  = string
      value = string
    })))
  }))
  default = []
}

variable "sqs_target" {
  description = "(Optional) Parameters used when you are using the rule to invoke an Amazon SQS Queue."
  type = list(object({
    message_group_id = optional(string)
  }))
  default = []
}

variable "target_id" {
  description = "(Optional) The unique target assignment ID."
  type        = string
  default     = null
}
