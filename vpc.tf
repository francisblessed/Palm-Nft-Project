module "vpc" {
  source                       = "terraform-aws-modules/vpc/aws"
  version                      = "3.14.4"
  name                         = var.vpc_name
  cidr                         = var.vpc_cidr
  azs                          = var.vpc_azs
  private_subnets              = var.vpc_private_subnets
  enable_nat_gateway           = true
  single_nat_gateway           = true
  tags                         = var.vpc_tags
}