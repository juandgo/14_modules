variable "aws_region" {
  type        = string
  description = "AWS region for deployment"
}

variable "prefix" {
  type        = string
  description = "Prefix for naming resources"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
  type        = map(string)
  description = "Map of availability zones to subnet CIDR blocks"
}

variable "allowed_ip_range" {
  type        = list(string)
  description = "List of allowed IP ranges in CIDR notation for ingress rules"
}

variable "instance_type" {
  type        = string
  description = "EC2 Instance type for launch template"
}