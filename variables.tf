variable "tags" {
    type = object({
        Name = string
        Author      = string
        Environment = string
        Provisioner = string
        Region      = string
    })
    description = "ecs services and tasks tags"
}

variable "ecs_cluster_arn" {
  type        = string
  description = "The ARN of the ECS cluster where service will be provisioned"
}

variable "service_connect_configuration" {
  type = object({
    enabled = bool
    namespace = string
    description = string
    vpc_id = string
  })
  default = null
  description = "service connect configuration for inter service communication"
}