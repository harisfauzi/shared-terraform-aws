locals {
  create_this = var.create_this
}

################################################################################
# Resource Share
################################################################################

resource "aws_ram_resource_share_accepter" "this" {
  count = local.create_this ? 1 : 0

  share_arn = var.share_arn
}