locals {
  create_this = var.create_this
}

################################################################################
# Transit Gateway Connect
################################################################################

resource "aws_ec2_transit_gateway_connect" "this" {
  count = local.create_this ? 1 : 0

  transit_gateway_id                              = var.transit_gateway_id
  transport_attachment_id                         = var.transport_attachment_id
  protocol                                        = var.protocol
  transit_gateway_default_route_table_association = var.transit_gateway_default_route_table_association
  transit_gateway_default_route_table_propagation = var.transit_gateway_default_route_table_propagation
  tags                                            = var.tags
}