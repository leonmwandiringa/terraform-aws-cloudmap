resource "aws_service_discovery_private_dns_namespace" "default" {
  count = var.vpc_id != null ? 1 : 0
  name        = var.namespace
  description = var.description
  vpc         = var.vpc_id
  tags = merge(
    var.tags,
    {
      Name = "${var.namespace}-private_namespace"
    }
  )
}

resource "aws_service_discovery_public_dns_namespace" "default" {
  count = var.vpc_id == null ? 1 : 0
  name        = var.namespace
  description =var.description
  tags = merge(
    var.tags,
    {
      Name = "${var.namespace}-public_namespace"
    }
  )
}