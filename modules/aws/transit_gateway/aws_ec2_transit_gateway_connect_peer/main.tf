locals {
  create_this = var.create_this
}

################################################################################
# Transit Gateway Connect Peer
################################################################################

resource "aws_ec2_transit_gateway_connect_peer" "this" {
  count = local.create_this ? 1 : 0

  inside_cidr_blocks            = var.inside_cidr_blocks
  peer_address                  = var.peer_address
  transit_gateway_attachment_id = var.transit_gateway_attachment_id
  bgp_asn                       = var.bgp_asn
  transit_gateway_address       = var.transit_gateway_address
  tags                          = var.tags
}