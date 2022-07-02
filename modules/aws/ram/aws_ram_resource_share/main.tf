locals {
  create_this = var.create_this
}

################################################################################
# Resource Share
################################################################################

resource "aws_ram_resource_share" "this" {
  count = local.create_this ? 1 : 0

  name                      = var.name
  allow_external_principals = var.allow_external_principals
  permission_arns           = var.permission_arns

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}