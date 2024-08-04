output "id" {
  description = "id"
  value       = var.vpc_id == null ? aws_service_discovery_public_dns_namespace.default[0].id : aws_service_discovery_private_dns_namespace.default[0].id
}

output "arn" {
  description = "ARN"
  value       = var.vpc_id == null ? aws_service_discovery_public_dns_namespace.default[0].arn : aws_service_discovery_private_dns_namespace.default[0].arn
}

output "hosted_zone" {
  description = "zone"
  value       = var.vpc_id == null ? aws_service_discovery_public_dns_namespace.default[0].hosted_zone : aws_service_discovery_private_dns_namespace.default[0].hosted_zone
}