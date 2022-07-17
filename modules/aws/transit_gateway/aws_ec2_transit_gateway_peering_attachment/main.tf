locals {
  create_this = var.create_this
}

################################################################################
# Transit Gateway Peering Attachment
################################################################################

resource "aws_ec2_transit_gateway_peering_attachment" "this" {
  count = local.create_this ? 1 : 0

  peer_region             = var.peer_region
  peer_transit_gateway_id = var.peer_transit_gateway_id
  transit_gateway_id      = var.transit_gateway_id
  peer_account_id         = var.peer_account_id

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}