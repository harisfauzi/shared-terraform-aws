output "id" {
  description = "The ID of the Resource Share"
  value       = try(aws_ram_resource_share.this[0].id, "")
}

output "arn" {
  description = "The ARN of the Resource Share"
  value       = try(aws_ram_resource_share.this[0].arn, "")
}
