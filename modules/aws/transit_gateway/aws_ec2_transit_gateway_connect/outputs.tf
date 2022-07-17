output "id" {
  description = "The ID of the Transit Gateway Connect"
  value       = try(aws_ec2_transit_gateway_connect.this[0].id, "")
}
