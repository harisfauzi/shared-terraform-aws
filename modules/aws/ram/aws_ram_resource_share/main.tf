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

################################################################################
# Resource Share Principals
################################################################################

resource "aws_ram_principal_association" "this" {
  for_each = var.principal_arns

  principal          = each.value
  resource_share_arn = try(aws_ram_resource_share.this[0].arn, "")
}

################################################################################
# Resource Share Resources
################################################################################

resource "aws_ram_resource_association" "this" {
  for_each = var.resource_arns

  resource_arn       = each.value
  resource_share_arn = try(aws_ram_resource_share.this[0].arn, "")
}
