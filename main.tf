provider "aws" {
  region = var.region                       # ← достаём из переменной
  default_tags {                            # приклеим к каждому ресурсу
    tags = {
      Project = "iac-pet"
      Owner   = "you"
    }
  }
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"  # готовый opensource-модуль
  version = "~> 5.0"

  name = "iac-pet"         # базовый префикс в именах ресурсов
  cidr = var.vpc_cidr       # 10.0.0.0/16

  azs            = var.azs # 2 availability zones
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]

  enable_nat_gateway = false
  single_nat_gateway = false
  create_igw = true
  enable_dns_hostnames = false
}}
