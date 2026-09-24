variable "prefix" {
  type        = string
  description = "Prefix for resource naming"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID to attach security groups"
}

variable "allowed_ip_range" {
  type        = list(string)
  description = "List of allowed IP ranges in CIDR format"
}