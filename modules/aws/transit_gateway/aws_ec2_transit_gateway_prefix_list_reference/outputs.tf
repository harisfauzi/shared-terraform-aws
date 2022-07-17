output "id" {
  description = "EC2 Transit Gateway Route Table identifier and EC2 Prefix List identifier, separated by an underscore"
  value       = try(aws_ec2_transit_gateway_prefix_list_reference.this[0].id, "")
}
