output "id" {
  description = "EC2 Transit Gateway identifier."
  value       = try(aws_ec2_transit_gateway.this[0].id, "")
}

output "arn" {
  description = "EC2 Transit Gateway Amazon Resource Name (ARN)."
  value       = try(aws_ec2_transit_gateway.this[0].arn, "")
}

output "association_default_route_table_id" {
  description = "Identifier of the default association route table."
  value       = try(aws_ec2_transit_gateway.this[0].association_default_route_table_id, "")
}

output "owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway."
  value       = try(aws_ec2_transit_gateway.this[0].owner_id, "")
}

output "propagation_default_route_table_id" {
  description = "Identifier of the default propagation route table."
  value       = try(aws_ec2_transit_gateway.this[0].propagation_default_route_table_id, "")
}
