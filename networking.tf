module "networking" {
  source = "terraform-aws-modules/vpc/aws"


  name = var.vpc_name   # vpc name
  cidr = var.cidr_block # vpc cidr block address

  azs             = ["ap-southeast-1a", "ap-southeast-1b"] # availability zone
  private_subnets = var.private_cidr                       # application private subnet
  public_subnets  = var.public_cidr                        # public subnet 

  enable_nat_gateway     = true
  single_nat_gateway     = false
  one_nat_gateway_per_az = true


  # enable_dns_hostnames = true
  # enable_dns_support   = true

}
