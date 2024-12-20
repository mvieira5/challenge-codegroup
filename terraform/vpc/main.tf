module "vpc" {
  source = "./modules/vpc"

  region                = var.region
  vpc_cidr              = var.vpc_cidr
  vpc_name              = var.vpc_name
  public_subnets        = var.public_subnets
  public_subnets_names  = var.public_subnets_names
  private_subnets       = var.private_subnets
  private_subnets_names = var.private_subnets_names
  public_rt_name        = var.public_rt_name
  private_rt_name       = var.private_rt_name
  igw_name              = var.igw_name
}
