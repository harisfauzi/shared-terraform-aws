locals {
  create_this = var.create_this
}

################################################################################
# IAM User
################################################################################

resource "aws_iam_user" "this" {
  count = local.create_this ? 1 : 0

  name                 = var.name
  path                 = var.path
  permissions_boundary = var.permissions_boundary
  force_destroy        = var.foce_destroy

  tags = var.tags
}