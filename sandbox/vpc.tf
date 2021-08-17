variable "public_subnet_cidr_blocks" {
  type = list
  default = [
    "172.33.10.0/24",
    "172.33.20.0/24",
    "172.33.30.0/24",
  ]
}

variable "private_subnet_cidr_blocks" {
  type = list ##here change from string to list
  default = [
    "172.33.100.0/24",
    "172.33.110.0/24",
    "172.33.120.0/24" ,
  ]
}

variable "availability_zones" {
  type = list
  default = [
    "us-east-2a",
    "us-east-2b",
    "us-east-2c",
  ]
}

variable "environment" {
  type    = string
  default = null
}

module "sandbox_vpc" {
  source = "../modules/vpc" ##here

  availability_zones        = var.availability_zones
  environment               = var.environment
  vpc_ciddrr_block            = "172.33.0.0/16" ##here
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks ##here
}

output "vpc_id" {
  value = module.sandbox_vpc.id
}
