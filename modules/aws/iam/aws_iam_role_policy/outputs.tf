output "id" {
  description = "Name of the role."
  value       = try(aws_iam_role_policy.this[0].id, "")
}

output "name" {
  description = "The name of the policy."
  value       = try(aws_iam_role_policy.this[0].name, "")
}

output "policy" {
  description = "The policy document attached to the role."
  value       = try(aws_iam_role_policy.this[0].policy, "")
}

output "role" {
  description = "The name of the role associated with the policy."
  value       = try(aws_iam_role_policy.this[0].role, "")
}
