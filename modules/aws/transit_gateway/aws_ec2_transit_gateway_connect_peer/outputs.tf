output "id" {
  description = "EC2 Transit Gateway Connect Peer identifier."
  value       = try(aws_ec2_transit_gateway_connect_peer.this[0].id, "")
}

output "arn" {
  description = "EC2 Transit Gateway Connect Peer ARN."
  value       = try(aws_ec2_transit_gateway_connect_peer.this[0].arn, "")
}
