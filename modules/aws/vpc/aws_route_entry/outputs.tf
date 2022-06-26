output "id" {
  description = "The ID of the Route Entry"
  value       = try(aws_route.this[0].id, "")
}

output "origin" {
  description = "The origin that created this entry"
  value       = try(aws_route.this[0].origin, "")
}

output "state" {
  description = "The state of the route"
  value       = try(aws_route.this[0].state, "")
}
