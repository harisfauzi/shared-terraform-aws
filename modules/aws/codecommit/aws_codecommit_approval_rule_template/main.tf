locals {
  create_this = var.create_this
}

################################################################################
# CodeCommit Approval Rule Template
################################################################################

resource "aws_codecommit_approval_rule_template" "this" {
  count = local.create_this ? 1 : 0

  name                  = var.name
  content               = var.content
  description           = var.description
}