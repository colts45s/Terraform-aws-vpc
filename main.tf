
data "aws_availability_zones" "available" {}

locals {
  cluster_name = var.project_name
}



module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.13.0"

  name            = var.project_name
  cidr            = var.cidr
  azs             = data.aws_availability_zones.available.names
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

  enable_nat_gateway   = false

}
