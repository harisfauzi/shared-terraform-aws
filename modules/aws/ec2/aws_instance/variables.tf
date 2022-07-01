variable "create_this" {
  description = "Controls if EC2 instance should be created"
  type        = bool
  default     = true
}

variable "name" {
  description = "EC2 instance name"
  type        = string
  default     = ""
}

variable "ami" {
  description = "AMI/ImageId"
  type        = string
  default     = null
}

variable "associate_public_ip_address" {
  description = "associate_public_ip_address"
  type        = bool
  default     = null
}

variable "availability_zone" {
  description = "availability_zone"
  type        = string
  default     = null
}

variable "capacity_reservation_specification" {
  description = "capacity_reservation_specification"
  type        = list(object({
    capacity_reservation_preference = optional(string)
    capacity_reservation_target     = optional(list(object({
      capacity_reservation_id                 = optional(string)
      capacity_reservation_resource_group_arn = optional(string)
    })))
  }))
  default     = []
}

variable "cpu_core_count" {
  description = "cpu_core_count"
  type        = number
  default     = null
}

variable "cpu_threads_per_core" {
  description = "cpu_threads_per_core"
  type        = number
  default     = null
}

variable "credit_specification" {
  description = "credit_specification"
  type        = list(object({
    cpu_credits = optional(string)
  }))
  default     = []
}

variable "disable_api_stop" {
  description = "disable_api_stop"
  type        = bool
  default     = null
}

variable "disable_api_termination" {
  description = "disable_api_termination"
  type        = bool
  default     = null
}

variable "ebs_block_devices" {
  description = "ebs_block_device"
  type        = list(object({
    delete_on_termination = optional(bool)
    device_name           = string
    encrypted             = optional(bool)
    iops                  = optional(number)
    kms_key_id            = optional(string)
    snapshot_id           = optional(string)
    tags                  = optional(map(string))
    throughput            = optional(number)
    volume_size           = optional(number)
    volume_type           = optional(string)
  }))
  default     = []
}

variable "ebs_optimized" {
  description = "ebs_optimized"
  type        = bool
  default     = null
}

variable "enclave_options" {
  description = "enclave_options"
  type        = list(object({
    enabled = optional(bool)
  }))
  default     = []
}

variable "ephemeral_block_device" {
  description = "AMI/ImageId"
  type        = list(object({
    device_name       = optional(string)
    no_device         = optional(bool)
    virtual_name      = optional(string)
  }))
  default     = []
}

variable "get_password_data" {
  description = "get_password_data"
  type        = bool
  default     = null
}

variable "hibernation" {
  description = "hibernation"
  type        = bool
  default     = null
}

variable "host_id" {
  description = "host_id"
  type        = string
  default     = null
}

variable "iam_instance_profile" {
  description = "iam_instance_profile"
  type        = string
  default     = null
}

variable "instance_initiated_shutdown_behavior" {
  description = "instance_initiated_shutdown_behavior"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "instance_type"
  type        = string
  default     = null
}

variable "ipv6_address_count" {
  description = "ipv6_address_count"
  type        = number
  default     = null
}

variable "ipv6_addresses" {
  description = "ipv6_addresses"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "key_name"
  type        = string
  default     = null
}

variable "launch_template" {
  description = "launch_template"
  type        = list(object({
    id      = optional(string)
    name    = optional(string)
    version = optional(string)
  }))
  default     = []
}

variable "maintenance_options" {
  description = "maintenance_options"
  type        = list(object({
    auto_recovery = optional(string)
  }))
  default     = []
}

variable "metadata_options" {
  description = "metadata_options"
  type        = list(object({
    http_endpoint               = optional(string)
    http_put_response_hop_limit = optional(number)
    http_tokens                 = optional(string)
    instance_metadata_tags      = optional(string)
  }))
  default     = []
}

variable "monitoring" {
  description = "monitoring"
  type        = bool
  default     = null
}

variable "network_interface" {
  description = "network_interface"
  type        = list(object({
    delete_on_termination = optional(bool)
    device_index          = optional(number)
    network_card_index    = optional(number)
    network_interface_id  = optional(string)
  }))
  default     = []
}

variable "placement_group" {
  description = "placement_group"
  type        = string
  default     = null
}

variable "placement_partition_number" {
  description = "placement_partition_number"
  type        = number
  default     = null
}

variable "private_dns_name_options" {
  description = "private_dns_name_options"
  type        = list(object({
    enable_resource_name_dns_aaaa_record  = optional(bool)
    enable_resource_name_dns_a_record     = optional(bool)
    hostname_type                         = optional(string)
  }))
  default     = []
}

variable "private_ip" {
  description = "private_ip"
  type        = string
  default     = null
}

variable "root_block_device" {
  description = "root_block_device"
  type        = list(object({
    delete_on_termination = optional(bool)
    encrypted             = optional(bool)
    iops                  = optional(number)
    kms_key_id            = optional(string)
    tags                  = optional(map(string))
    throughput            = optional(number)
    volume_size           = optional(number)
    volume_type           = optional(string)
  }))
  default     = []
}

variable "secondary_private_ips" {
  description = "secondary_private_ips"
  type        = list(string)
  default     = []
}

variable "security_groups" {
  description = "security_groups"
  type        = list(string)
  default     = []
}

variable "source_dest_check" {
  description = "source_dest_check"
  type        = string
  default     = true
}

variable "subnet_id" {
  description = "subnet_id"
  type        = string
  default     = null
}

variable "tenancy" {
  description = "tenancy"
  type        = string
  default     = null
}

variable "user_data" {
  description = "user_data"
  type        = string
  default     = null
}

variable "user_data_base64" {
  description = "user_data_base64"
  type        = string
  default     = null
}

variable "user_data_replace_on_change" {
  description = "user_data_replace_on_change"
  type        = bool
  default     = null
}

variable "volume_tags" {
  description = "volume_tags"
  type        = map(string)
  default     = {}
}

variable "vpc_security_group_ids" {
  description = "vpc_security_group_ids"
  type        = list(string)
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}