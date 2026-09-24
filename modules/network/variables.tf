variable "prefix" {
  type        = string
  description = "Prefix for resource naming"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
  type        = map(string)
  description = "Map of AZ to CIDR block"
}