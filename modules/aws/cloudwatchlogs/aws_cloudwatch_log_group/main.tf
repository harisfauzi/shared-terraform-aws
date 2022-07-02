locals {
  create_this = var.create_this
}

################################################################################
# CloudWatch Logs LogGroup
################################################################################

resource "aws_cloudwatch_log_group" "this" {
  count = local.create_this ? 1 : 0

  name              = var.name
  name_prefix       = var.name_prefix
  retention_in_days = var.retention_in_days
  kms_key_id        = var.kms_key_id

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}