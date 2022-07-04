output "id" {
  description = "The ID of the egress-only Internet gateway."
  value       = try(aws_egress_only_internet_gateway.this[0].id, "")
}
