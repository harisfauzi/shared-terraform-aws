locals {
  create_this = var.create_this
}

################################################################################
# IAM Instance Profile
################################################################################

resource "aws_iam_instance_profile" "this" {
  count = local.create_this ? 1 : 0

  role                    = var.role
  name                    = var.name
  name_prefix             = var.name_prefix
  path                    = var.path

  tags = var.tags
}