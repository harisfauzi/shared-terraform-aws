output "id" {
  description = "The name of the approval rule template and name of the repository, separated by a comma."
  value       = try(aws_codecommit_approval_rule_template_association.this[0].id, "")
}
