variable "prefix" {
  type        = string
  description = "Prefix for resource naming"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs for ALB and ASG"
}

variable "ssh_security_group_id" {
  type        = string
  description = "SSH Security Group ID"
}

variable "public_http_sg_id" {
  type        = string
  description = "Public HTTP Security Group ID for ALB"
}

variable "private_http_sg_id" {
  type        = string
  description = "Private HTTP Security Group ID for Launch Template"
}

variable "instance_type" {
  type        = string
  description = "Instance type for EC2 instances"
}