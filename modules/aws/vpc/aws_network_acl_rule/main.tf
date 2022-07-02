locals {
  create_this = var.create_this
}

################################################################################
# Network ACL
################################################################################

resource "aws_network_acl_rule" "this" {
  count = local.create_this ? 1 : 0

  network_acl_id  = var.network_acl_id
  rule_number     = var.rule_number
  egress          = var.direction == "egress" ? true : false
  protocol        = var.protocol
  rule_action     = var.rule_action
  cidr_block      = var.cidr_block
  ipv6_cidr_block = var.ipv6_cidr_block
  from_port       = var.from_port
  to_port         = var.to_port
  icmp_type       = var.icmp_type
  icmp_code       = var.icmp_code
}