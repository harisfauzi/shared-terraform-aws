output "arn" {
  description = "The ARN of the EC2 instance."
  value       = try(aws_instance.this[0].arn, "")
}

output "instance_state" {
  description = "The state of the EC2 instance."
  value       = try(aws_instance.this[0].instance_state, "")
}

output "primary_network_interface_id" {
  description = "The ID of the instance's primary network interface."
  value       = try(aws_instance.this[0].primary_network_interface_id, "")
}

output "private_dns" {
  description = "The private DNS name assigned to the instance."
  value       = try(aws_instance.this[0].private_dns, "")
}
