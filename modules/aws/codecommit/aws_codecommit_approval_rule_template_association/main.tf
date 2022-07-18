locals {
  create_this = var.create_this
}

################################################################################
# IAM Role
################################################################################

resource "aws_codecommit_approval_rule_template_association" "this" {
  count = local.create_this ? 1 : 0

  approval_rule_template_name = var.approval_rule_template_name
  repository_name             = var.repository_name
}