output "id" {
  description = "The name of the rule."
  value       = try(aws_cloudwatch_event_rule.this[0].id, "")
}

output "arn" {
  description = "The Amazon Resource Name (ARN) of the rule."
  value       = try(aws_cloudwatch_event_rule.this[0].arn, "")
}
