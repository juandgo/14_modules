aws_region = "eu-west-1"
prefix     = "cmtr-8k07hv2y"

vpc_cidr = "10.10.0.0/16"

public_subnet_cidrs = {
  "eu-west-1a" = "10.10.1.0/24"
  "eu-west-1b" = "10.10.3.0/24"
  "eu-west-1c" = "10.10.5.0/24"
}

allowed_ip_range = [
  "18.153.146.156/32",
  "181.54.0.157/32"
]

instance_type = "t3.micro"