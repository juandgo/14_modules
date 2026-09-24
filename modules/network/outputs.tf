output "vpc_id" {
  type        = string
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs"
  value       = [for subnet in aws_subnet.public : subnet.id]
}