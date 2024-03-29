output "id" {
  description = "The ID of the Route Table"
  value       = try(aws_route_table.this[0].id, "")
}

output "arn" {
  description = "The ARN of the VPC"
  value       = try(aws_route_table.this[0].arn, "")
}

output "owner_id" {
  description = "The ID of the AWS account that owns the Route Table"
  value       = try(aws_route_table.this[0].owner_id, "")
}
