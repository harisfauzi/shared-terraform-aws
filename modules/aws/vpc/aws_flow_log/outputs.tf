output "id" {
  description = "The ID of the Flow Log"
  value       = try(aws_flow_log.this[0].id, "")
}

output "arn" {
  description = "The ARN of the Flow Log"
  value       = try(aws_flow_log.this[0].arn, "")
}
