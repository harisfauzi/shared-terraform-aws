locals {
  create_this = var.create_this
}

################################################################################
# EventBridge Rule
################################################################################

resource "aws_cloudwatch_event_rule" "this" {
  count = local.create_this ? 1 : 0

  name                = var.name
  name_prefix         = var.name_prefix
  schedule_expression = var.schedule_expression
  description         = var.description
  event_bus_name      = var.event_bus_name
  event_pattern       = var.event_pattern
  role_arn            = var.role_arn
  is_enabled          = var.is_enabled
  tags                = var.tags
}
