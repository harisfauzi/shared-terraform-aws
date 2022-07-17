output "id" {
  description = "EC2 Transit Gateway Attachment identifier."
  value       = try(aws_ec2_transit_gateway_peering_attachment_accepter.this[0].id, "")
}

output "transit_gateway_id" {
  description = "Identifier of EC2 Transit Gateway."
  value       = try(aws_ec2_transit_gateway_peering_attachment_accepter.this[0].transit_gateway_id, "")
}

output "peer_transit_gateway_id" {
  description = "Identifier of EC2 Transit Gateway to peer with."
  value       = try(aws_ec2_transit_gateway_peering_attachment_accepter.this[0].peer_transit_gateway_id, "")
}

output "peer_account_id" {
  description = "Identifier of the AWS account that owns the EC2 TGW peering."
  value       = try(aws_ec2_transit_gateway_peering_attachment_accepter.this[0].peer_account_id, "")
}
