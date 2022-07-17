
output "arn" {
  description = "The ARN of the parameter."
  value       = try(aws_ssm_parameter.this[0].arn, "")
}

output "name" {
  description = "The name of the parameter."
  value       = try(aws_ssm_parameter.this[0].name, "")
}

output "description" {
  description = "The description of the parameter."
  value       = try(aws_ssm_parameter.this[0].description, "")
}

output "type" {
  description = "The type of the parameter."
  value       = try(aws_ssm_parameter.this[0].type, "")
}

output "version" {
  description = "The version of the parameter."
  value       = try(aws_ssm_parameter.this[0].version, "")
}
