locals {
  create_this = var.create_this
}

################################################################################
# Egress Only Internet Gateway (only for IPv6)
################################################################################

resource "aws_egress_only_internet_gateway" "this" {
  count = local.create_this ? 1 : 0

  vpc_id = var.vpc_id

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}