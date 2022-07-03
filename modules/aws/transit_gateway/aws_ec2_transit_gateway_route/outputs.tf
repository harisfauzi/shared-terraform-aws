output "id" {
  description = "The ID of the Flow Log"
  value       = try(aws_ec2_transit_gateway_route.this[0].id, "")
}

output "arn" {
  description = "The ARN of the Flow Log"
  value       = try(aws_ec2_transit_gateway_route.this[0].arn, "")
}
