output "id" {
  description = "EC2 Transit Gateway Attachment identifier"
  value       = try(aws_ec2_transit_gateway_vpc_attachment.this[0].id, "")
}

output "vpc_owner_id" {
  description = "Identifier of the AWS account that owns the EC2 VPC."
  value       = try(aws_ec2_transit_gateway_vpc_attachment.this[0].vpc_owner_id, "")
}
