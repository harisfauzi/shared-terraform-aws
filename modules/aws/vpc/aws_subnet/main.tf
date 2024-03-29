locals {
  create_this = var.create_this
}

################################################################################
# Subnet
################################################################################

resource "aws_subnet" "this" {
  count = local.create_this ? 1 : 0

  vpc_id                                         = var.vpc_id
  assign_ipv6_address_on_creation                = var.assign_ipv6_address_on_creation
  availability_zone                              = var.availability_zone
  availability_zone_id                           = var.availability_zone_id
  cidr_block                                     = var.cidr_block
  customer_owned_ipv4_pool                       = var.customer_owned_ipv4_pool
  enable_dns64                                   = var.enable_dns64
  enable_resource_name_dns_aaaa_record_on_launch = var.enable_resource_name_dns_aaaa_record_on_launch
  enable_resource_name_dns_a_record_on_launch    = var.enable_resource_name_dns_a_record_on_launch
  ipv6_cidr_block                                = var.ipv6_cidr_block
  ipv6_native                                    = var.ipv6_native
  map_customer_owned_ip_on_launch                = var.map_customer_owned_ip_on_launch
  map_public_ip_on_launch                        = var.map_public_ip_on_launch
  outpost_arn                                    = var.outpost_arn
  private_dns_hostname_type_on_launch            = var.private_dns_hostname_type_on_launch

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}

resource "aws_network_acl_association" "this" {
  count          = var.network_acl_id == "" ? 0 : 1
  network_acl_id = var.network_acl_id
  subnet_id      = aws_subnet.this[0].id
}

resource "aws_route_table_association" "this" {
  count          = var.route_table_id == "" ? 0 : 1
  route_table_id = var.route_table_id
  subnet_id      = aws_subnet.this[0].id
}