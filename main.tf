module "network" {
  source              = "./modules/network"
  prefix              = var.prefix
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
}

module "network_security" {
  source           = "./modules/network_security"
  prefix           = var.prefix
  vpc_id           = module.network.vpc_id
  allowed_ip_range = var.allowed_ip_range
}

module "application" {
  source                = "./modules/application"
  prefix                = var.prefix
  vpc_id                = module.network.vpc_id
  public_subnet_ids     = module.network.public_subnet_ids
  ssh_security_group_id = module.network_security.ssh_security_group_id
  public_http_sg_id     = module.network_security.public_http_security_group_id
  private_http_sg_id    = module.network_security.private_http_security_group_id
  instance_type         = var.instance_type
}