output "repository_id" {
  description = "The ID of the repository."
  value       = try(aws_codecommit_repository.this[0].repository_id, "")
}

output "repository_name" {
  description = "The name for the repository."
  value       = try(aws_codecommit_repository.this[0].repository_name, "")
}

output "arn" {
  description = "The ARN of the repository."
  value       = try(aws_codecommit_repository.this[0].arn, "")
}

output "clone_url_http" {
  description = "The URL to use for cloning the repository over HTTPS."
  value       = try(aws_codecommit_repository.this[0].clone_url_http, "")
}

output "clone_url_ssh" {
  description = "The URL to use for cloning the repository over SSH."
  value       = try(aws_codecommit_repository.this[0].clone_url_ssh, "")
}
