output "invitation_arn" {
  description = "The ARN of the resource share invitation."
  value       = try(aws_ram_resource_share_accepter.this[0].invitation_arn, "")
}

output "share_id" {
  description = " The ID of the resource share as displayed in the console."
  value       = try(aws_ram_resource_share_accepter.this[0].share_id, "")
}

output "status" {
  description = "The status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED)."
  value       = try(aws_ram_resource_share_accepter.this[0].status, "")
}

output "receiver_account_id" {
  description = "The account ID of the receiver account which accepts the invitation."
  value       = try(aws_ram_resource_share_accepter.this[0].receiver_account_id, "")
}

output "sender_account_id" {
  description = "The account ID of the sender account which submits the invitation."
  value       = try(aws_ram_resource_share_accepter.this[0].sender_account_id, "")
}

output "share_name" {
  description = "The name of the resource share."
  value       = try(aws_ram_resource_share_accepter.this[0].share_name, "")
}
