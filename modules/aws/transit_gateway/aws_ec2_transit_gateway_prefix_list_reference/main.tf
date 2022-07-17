locals {
  create_this = var.create_this
}

################################################################################
# Transit Gateway Prefix List Reference
################################################################################

resource "aws_ec2_transit_gateway_prefix_list_reference" "this" {
  count = local.create_this ? 1 : 0

  prefix_list_id                  = var.prefix_list_id
  transit_gateway_route_table_id  = var.transit_gateway_route_table_id
  blackhole                       = var.blackhole
  transit_gateway_attachment_id   = var.transit_gateway_attachment_id
}