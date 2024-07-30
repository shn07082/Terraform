# Stage VPC
module "stage_vpc" {
  source = "github.com/eeeeeni/Terraform-project-VPC"
  name   = "stage_vpc"
  cidr   = local.cidr

  azs                 = local.azs
  public_subnets      = local.public_subnet
  private_subnets     = local.private_subnets
  elasticache_subnets = local.elasticache_subnets
  database_subnets    = local.database_subnets

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway     = true
  single_nat_gateway     = false
  one_nat_gateway_per_az = true

  elasticache_subnet_group_name = local.elasticache_subnet_group_name
  tags = {
    "TerraformManaged" = "true"
    "Environment"      = "stage"
  }
}