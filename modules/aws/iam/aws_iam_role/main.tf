locals {
  create_this = var.create_this
}

################################################################################
# IAM Role
################################################################################

resource "aws_iam_role" "this" {
  count = local.create_this ? 1 : 0

  assume_role_policy    = var.assume_role_policy
  description           = var.description
  force_detach_policies = var.force_detach_policies
  managed_policy_arns   = var.managed_policy_arns
  max_session_duration  = var.max_session_duration
  name                  = var.name
  name_prefix           = var.name_prefix
  path                  = var.path
  permissions_boundary  = var.permissions_boundary
  dynamic "inline_policy" {
    for_each = var.inline_policies
    content {
      name   = inline_policy.value["name"]
      policy = inline_policy.value["policy"]
    }
  }

  tags = var.tags
}