locals {
  create_this = var.create_this
}

################################################################################
# CodeCommit Repository
################################################################################

resource "aws_codecommit_repository" "this" {
  count = local.create_this ? 1 : 0

  repository_name = var.repository_name
  description     = var.description
  default_branch  = var.default_branch

  tags = merge(
    { "Name" = var.repository_name },
    var.tags,
  )
}