variable "tags" {
    type = object({
        Name = string
        Author      = string
        Environment = string
        Provisioner = string
        Region      = string
    })
    description = "cloudmap tags"
}

variable "namespace" {
  type = string
  description = "service connect configuration namespace for inter service communication"
}

variable "description" {
  type = string
  default = null
  description = "service connect configuration description for inter service communication"
}

variable "vpc_id" {
  type = string
  default = null
  description = "service connect configuration vpc id for inter service communication"
}
