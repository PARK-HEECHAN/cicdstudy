locals {
  region = var.region

  name           = var.name
  policy_name    = format("%s-policy", var.name)
  s3_bucket_name = format("fc-%s-flow", var.name)
  azs            = ["${local.region}a", "${local.region}c"]

  # cidr
  cidr            = var.vpc_cidr
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  gwlb_subnets    = var.gwlb_subnets

  enable_ipv6 = var.enable_ipv6

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  tags                = merge(var.tags, { Owner = var.owner, Environment = var.env })
  vpc_tags            = merge(var.vpc_tags, { Name = format("%s-vpc", var.name) })
  private_subnet_tags = merge(var.private_subnet_tags)
  public_subnet_tags  = merge(var.public_subnet_tags)
}