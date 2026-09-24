output "ssh_security_group_id" {
  type        = string
  description = "ID of the SSH security group"
  value       = aws_security_group.ssh.id
}

output "public_http_security_group_id" {
  type        = string
  description = "ID of the public HTTP security group"
  value       = aws_security_group.public_http.id
}

output "private_http_security_group_id" {
  type        = string
  description = "ID of the private HTTP security group"
  value       = aws_security_group.private_http.id
}