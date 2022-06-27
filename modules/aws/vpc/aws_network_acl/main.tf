locals {
  create_this = var.create_this
}

################################################################################
# Network ACL
################################################################################

resource "aws_network_acl" "this" {
  count = local.create_this ? 1 : 0

  vpc_id      = var.vpc_id
  subnet_ids  = var.subnet_ids
  ingress     = var.ingress
  egress      = var.egress

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}