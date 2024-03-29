locals {
  create_this = var.create_this
}

################################################################################
# Lambda Function
################################################################################

resource "aws_lambda_function" "this" {
  count = local.create_this ? 1 : 0

  function_name           = var.function_name
  role                    = var.role
  architectures           = var.architectures
  code_signing_config_arn = var.code_signing_config_arn
  dynamic "dead_letter_config" {
    for_each = var.dead_letter_config
    content {
      target_arn = dead_letter_config.value["target_arn"]
    }
  }
  description = var.description
  dynamic "environment" {
    for_each = var.environment
    content {
      variables = environment.value["variables"]
    }
  }
  dynamic "ephemeral_storage" {
    for_each = var.ephemeral_storage
    content {
      size = image_config.value["size"]
    }
  }
  dynamic "file_system_config" {
    for_each = var.file_system_config
    content {
      arn              = image_config.value["arn"]
      local_mount_path = image_config.value["local_mount_path"]
    }
  }
  filename = var.filename
  handler  = var.handler
  dynamic "image_config" {
    for_each = var.image_config
    content {
      command           = image_config.value["command"]
      entry_point       = image_config.value["entry_point"]
      working_directory = image_config.value["working_directory"]
    }
  }
  image_uri                      = var.image_uri
  kms_key_arn                    = var.kms_key_arn
  layers                         = var.layers
  memory_size                    = var.memory_size
  package_type                   = var.package_type
  publish                        = var.publish
  reserved_concurrent_executions = var.reserved_concurrent_executions
  runtime                        = var.runtime
  s3_bucket                      = var.s3_bucket
  s3_key                         = var.s3_key
  s3_object_version              = var.s3_object_version
  skip_destroy                   = var.skip_destroy
  source_code_hash               = var.source_code_hash
  dynamic "snap_start" {
    for_each = var.snap_start
    content {
      apply_on = snap_start.value["apply_on"]
    }
  }
  tags    = var.tags
  timeout = var.timeout
  dynamic "tracing_config" {
    for_each = var.tracing_config
    content {
      mode = tracing_config.value["mode"]
    }
  }
  dynamic "vpc_config" {
    for_each = var.vpc_config
    content {
      security_group_ids = vpc_config.value["security_group_ids"]
      subnet_ids         = vpc_config.value["subnet_ids"]
    }
  }
}
