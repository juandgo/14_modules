output "alb_dns_name" {
  type        = string
  description = "Application Load Balancer DNS name"
  value       = aws_lb.this.dns_name
}