resource "aws_security_group" "ssh" {
  name        = "${var.prefix}-ssh-sg"
  description = "Security group allowing SSH access"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH from allowed IPs"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ip_range
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.prefix}-ssh-sg"
  }
}

resource "aws_security_group" "public_http" {
  name        = "${var.prefix}-public-http-sg"
  description = "Security group for public HTTP access"
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTP from allowed IPs"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.allowed_ip_range
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.prefix}-public-http-sg"
  }
}

resource "aws_security_group" "private_http" {
  name        = "${var.prefix}-private-http-sg"
  description = "Security group for private HTTP access from public ALB"
  vpc_id      = var.vpc_id

  ingress {
    description     = "HTTP from public HTTP SG"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.public_http.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.prefix}-private-http-sg"
  }
}