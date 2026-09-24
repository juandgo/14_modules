output "alb_dns_name" {
  type        = string
  description = "DNS name of the Application Load Balancer"
  value       = module.application.alb_dns_name
}