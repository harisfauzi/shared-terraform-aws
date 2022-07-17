locals {
  create_this = var.create_this
}

################################################################################
# SSM Parameter
################################################################################

resource "aws_ssm_parameter" "this" {
  count = local.create_this ? 1 : 0

  name            = var.name
  type            = var.type
  value           = var.value
  description     = var.description
  tier            = var.tier
  key_id          = var.key_id
  overwrite       = var.overwrite
  allowed_pattern = var.allowed_pattern
  data_type       = var.data_type

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}