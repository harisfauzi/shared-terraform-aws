output "id" {
  description = "EC2 Transit Gateway Attachment identifier."
  value       = try(aws_ec2_transit_gateway_vpc_attachment_accepter.this[0].id, "")
}

output "appliance_mode_support" {
  description = "Whether Appliance Mode support is enabled."
  value       = try(aws_ec2_transit_gateway_vpc_attachment_accepter.this[0].appliance_mode_support, "")
}

output "dns_support" {
  description = "Whether DNS support is enabled."
  value       = try(aws_ec2_transit_gateway_vpc_attachment_accepter.this[0].dns_support, "")
}
output "ipv6_support" {
  description = "Whether IPv6 support is enabled."
  value       = try(aws_ec2_transit_gateway_vpc_attachment_accepter.this[0].ipv6_support, "")
}
output "transit_gateway_id" {
  description = "Identifier of EC2 Transit Gateway."
  value       = try(aws_ec2_transit_gateway_vpc_attachment_accepter.this[0].transit_gateway_id, "")
}
output "vpc_id" {
  description = "Identifier of EC2 VPC."
  value       = try(aws_ec2_transit_gateway_vpc_attachment_accepter.this[0].vpc_id, "")
}
output "vpc_owner_id" {
  description = "Identifier of the AWS account that owns the EC2 VPC."
  value       = try(aws_ec2_transit_gateway_vpc_attachment_accepter.this[0].vpc_owner_id, "")
}