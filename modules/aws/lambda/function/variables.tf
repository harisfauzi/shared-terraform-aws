variable "create_this" {
  description = "Controls if this resource should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "function_name" {
  description = "Unique name for your Lambda Function."
  type        = string
}

variable "role" {
  description = "Amazon Resource Name (ARN) of the function's execution role."
  type        = string
}

variable "architectures" {
  description = "(Optional) Instruction set architecture for your Lambda function."
  type        = list(string)
  default     = []
}

variable "code_signing_config_arn" {
  description = "(Optional) To enable code signing for this function, specify the ARN of a code-signing configuration."
  type        = string
  default     = null
}

variable "dead_letter_config" {
  description = "(Optional) Configuration block."
  type        = list(object({
    target_arn = string
  }))
  default     = []
}

variable "description" {
  description = "(Optional) Description of what your Lambda Function does."
  type        = string
  default     = null
}

variable "environment" {
  description = "(Optional) Configuration block."
  type        = list(object({
    variables = optional(map(string))
  }))
  default     = []
}

variable "ephemeral_storage" {
  description = "(Optional) The amount of Ephemeral storage(/tmp) to allocate for the Lambda Function in MB."
  type        = list(object({
    size = number
  }))
  default     = []
}

variable "file_system_config" {
  description = "(Optional) Configuration block."
  type = list(object({
    arn              = string
    local_mount_path = string
  }))
  default = []
}

variable "filename" {
  description = "(Optional) Path to the function's deployment package within the local filesystem."
  type        = string
  default     = null
}

variable "handler" {
  description = "(Optional) Function entrypoint in your code."
  type        = string
  default     = null
}

variable "image_config" {
  description = "(Optional) Configuration block."
  type = list(object({
    command           = optional(list(string))
    entry_point       = optional(list(string))
    working_directory = optional(string)
  }))
  default = []
}

variable "image_uri" {
  description = "(Optional) ECR image URI containing the function's deployment package."
  type        = string
  default     = null
}

variable "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) key that is used to encrypt environment variables."
  type        = string
  default     = null
}

variable "layers" {
  description = "(Optional) List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function"
  type        = list(string)
  default     = []
}

variable "memory_size" {
  description = "(Optional) Amount of memory in MB your Lambda Function can use at runtime."
  type        = number
  default     = null
}

variable "package_type" {
  description = "(Optional) Lambda deployment package type."
  type        = string
  default     = null
}

variable "publish" {
  description = "(Optional) Whether to publish creation/change as new Lambda Function Version."
  type        = bool
  default     = null
}

variable "reserved_concurrent_executions" {
  description = "(Optional) Amount of reserved concurrent executions for this lambda function."
  type        = number
  default     = null
}

variable "runtime" {
  description = "(Optional) Identifier of the function's runtime."
  type        = string
  default     = null
}

variable "s3_bucket" {
  description = "(Optional) S3 bucket location containing the function's deployment package."
  type        = string
  default     = null
}

variable "s3_key" {
  description = "(Optional) S3 key of an object containing the function's deployment package."
  type        = string
  default     = null
}

variable "s3_object_version" {
  description = "(Optional) Object version containing the function's deployment package."
  type        = string
  default     = null
}

variable "skip_destroy" {
  description = "(Optional) Set to true if you do not wish the function to be deleted at destroy time, and instead just remove the function from the Terraform state."
  type        = bool
  default     = null
}

variable "source_code_hash" {
  description = ""
  type        = string
  default     = null
}

variable "snap_start" {
  description = "(Optional) Snap start settings block."
  type = list(object({
    apply_on = string
  }))
  default = []
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "timeout" {
  description = "(Optional) Amount of time your Lambda Function has to run in seconds."
  type        = number
  default     = null
}

variable "tracing_config" {
  description = "(Optional) Configuration block."
  type = list(object({
    mode = string
  }))
  default = []
}

variable "vpc_config" {
  description = "(Optional) Configuration block."
  type = list(object({
    security_group_ids = optional(list(string))
    subnet_ids         = optional(list(string))
  }))
  default = []
}
