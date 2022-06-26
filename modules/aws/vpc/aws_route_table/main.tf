locals {
  create_this = var.create_this
}

################################################################################
# Route Table
################################################################################

resource "aws_route_table" "this" {
  count = local.create_this ? 1 : 0

  vpc_id  = var.vpc_id

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}