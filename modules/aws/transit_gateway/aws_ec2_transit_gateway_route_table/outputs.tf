output "id" {
  description = "EC2 Transit Gateway Route Table identifier."
  value       = try(aws_ec2_transit_gateway_route_table.this[0].id, "")
}

output "arn" {
  description = "EC2 Transit Gateway Route Table Amazon Resource Name (ARN)."
  value       = try(aws_ec2_transit_gateway_route_table.this[0].arn, "")
}


output "default_association_route_table" {
  description = "Boolean whether this is the default association route table for the EC2 Transit Gateway."
  value       = try(aws_ec2_transit_gateway_route_table.this[0].default_association_route_table, "")
}


output "default_propagation_route_table" {
  description = "Boolean whether this is the default propagation route table for the EC2 Transit Gateway."
  value       = try(aws_ec2_transit_gateway_route_table.this[0].default_propagation_route_table, "")
}
