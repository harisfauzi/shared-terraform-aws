output "id" {
  description = "The ID of the Internet Gateway"
  value       = try(aws_internet_gateway.this[0].id, "")
}

output "arn" {
  description = "The ARN of the VPC"
  value       = try(aws_internet_gateway.this[0].arn, "")
}

output "owner_id" {
  description = "The ID of the AWS account that owns the VPC"
  value       = try(aws_internet_gateway.this[0].owner_id, "")
}
