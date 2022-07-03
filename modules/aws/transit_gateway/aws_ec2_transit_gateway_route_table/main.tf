locals {
  create_this = var.create_this
}

################################################################################
# Transit Gateway Route Table
################################################################################

resource "aws_ec2_transit_gateway_route_table" "this" {
  count              = local.create_this ? 1 : 0
  transit_gateway_id = var.transit_gateway_id
  tags               = var.tags
}