output "configuration_id" {
  description = "System-generated unique identifier."
  value       = try(aws_codecommit_trigger.this[0].configuration_id, "")
}
