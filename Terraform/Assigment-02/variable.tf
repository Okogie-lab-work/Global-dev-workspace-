variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
}

variable "allowed_ip" {
  description = "Allowed IP for security group"
  type        = list(string)
}
