output "id" {
  description = "The ID of the Subnet"
  value       = try(aws_subnet.this[0].id, "")
}

output "arn" {
  description = "The ARN of the Subnet"
  value       = try(aws_subnet.this[0].arn, "")
}

output "owner_id" {
  description = "The ID of the AWS account that owns the Subnet"
  value       = try(aws_subnet.this[0].owner_id, "")
}
