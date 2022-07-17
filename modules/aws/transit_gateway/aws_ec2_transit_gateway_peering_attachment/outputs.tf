output "id" {
  description = "EC2 Transit Gateway Attachment identifier."
  value       = try(aws_ec2_transit_gateway_peering_attachment.this[0].id, "")
}
