variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "allowed_ip" {
  description = "Allowed IP for ingress"
  type        = string
}
