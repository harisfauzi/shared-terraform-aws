locals {
  create_this = var.create_this
}

################################################################################
# Transit Gateway Peering Attachment Accepter
################################################################################

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "this" {
  count = local.create_this ? 1 : 0

  transit_gateway_attachment_id = var.transit_gateway_attachment_id

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}