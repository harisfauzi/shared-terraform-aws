output "id" {
  description = "Name of the role."
  value       = try(aws_iam_role.this[0].id, "")
}

output "arn" {
  description = "The ARN of the IAM Role."
  value       = try(aws_iam_role.this[0].arn, "")
}

output "create_date" {
  description = "Creation date of the IAM role."
  value       = try(aws_iam_role.this[0].create_date, "")
}

output "name" {
  description = "Name of the role."
  value       = try(aws_iam_role.this[0].name, "")
}

output "unique_id" {
  description = "Stable and unique string identifying the role."
  value       = try(aws_iam_role.this[0].unique_id, "")
}
