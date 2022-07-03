
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the log group."
  value       = try(aws_cloudwatch_log_group.this[0].arn, "")
}
