output "arn" {
  description = "The ARN assigned by AWS for this user."
  value       = try(aws_iam_user.this[0].arn, "")
}

output "name" {
  description = "The user's name."
  value       = try(aws_iam_user.this[0].name, "")
}

output "unique_id" {
  description = "The unique ID assigned by AWS."
  value       = try(aws_iam_user.this[0].unique_id, "")
}
