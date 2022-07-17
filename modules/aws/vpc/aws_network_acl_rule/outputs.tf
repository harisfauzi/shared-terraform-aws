output "id" {
  description = "The ID of the Network ACL Rule"
  value       = try(aws_network_acl_rule.this[0].id, "")
}
