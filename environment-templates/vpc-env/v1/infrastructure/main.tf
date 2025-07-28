module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.environment.inputs.vpc_name
  cidr = var.environment.inputs.vpc_cidr

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "${terraform.workspace}-vpc"
  }
}

output "vpc_id" {
  value = module.vpc.id
}

