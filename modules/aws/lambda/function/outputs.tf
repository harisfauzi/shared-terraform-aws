output "arn" {
  description = "Amazon Resource Name (ARN) identifying your Lambda Function."
  value       = try(aws_lambda_function.this[0].arn, "")
}

output "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  value       = try(aws_lambda_function.this[0].invoke_arn, "")
}

output "last_modified" {
  description = "Date this resource was last modified."
  value       = try(aws_lambda_function.this[0].last_modified, "")
}

output "qualified_arn" {
  description = "ARN identifying your Lambda Function Version."
  value       = try(aws_lambda_function.this[0].qualified_arn, "")
}

output "qualified_invoke_arn" {
  description = "Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  value       = try(aws_lambda_function.this[0].qualified_invoke_arn, "")
}

output "signing_job_arn" {
  description = "ARN of the signing job."
  value       = try(aws_lambda_function.this[0].signing_job_arn, "")
}

output "signing_profile_version_arn" {
  description = "ARN of the signing profile version."
  value       = try(aws_lambda_function.this[0].signing_profile_version_arn, "")
}

output "source_code_size" {
  description = "Size in bytes of the function .zip file."
  value       = try(aws_lambda_function.this[0].source_code_size, "")
}

output "version" {
  description = "Latest published version of your Lambda Function."
  value       = try(aws_lambda_function.this[0].version, "")
}
