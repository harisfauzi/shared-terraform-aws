locals {
  create_this = var.create_this
}

################################################################################
# IAM Role Policy
################################################################################

resource "aws_iam_role_policy" "this" {
  count = local.create_this ? 1 : 0

  policy      = var.policy
  role        = var.role
  name        = var.name
  name_prefix = var.name_prefix
}