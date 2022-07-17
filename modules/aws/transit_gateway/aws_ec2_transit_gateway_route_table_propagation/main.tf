locals {
  create_this = var.create_this
}

################################################################################
# Transit Gateway Route Table Propagation
################################################################################

resource "aws_ec2_transit_gateway_route_table_propagation" "this" {
  count = local.create_this ? 1 : 0

  transit_gateway_attachment_id  = var.transit_gateway_attachment_id
  transit_gateway_route_table_id = var.transit_gateway_route_table_id
}