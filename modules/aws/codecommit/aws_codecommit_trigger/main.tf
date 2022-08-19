locals {
  create_this = var.create_this
}

################################################################################
# CodeCommit Trigger
################################################################################

resource "aws_codecommit_trigger" "this" {
  count = local.create_this ? 1 : 0

  repository_name = var.repository_name
  name            = var.name
  destination_arn = var.destination_arn
  custom_data     = var.custom_data
  branches        = var.branches
  events          = var.events
}