terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.32.0" # Adjust the version constraint as needed
    }
  }
}

provider "aws" {
  region = var.region
}

module "alb_http_sg" { 
  source = "./modules/presentation"
  vpc_id      = module.my_vpc.vpc_id
}


module "asg_sg" {
  source = "./modules/presentation"

  #name        = var.asg_sg_name
  #description = var.asg_sg_description
  vpc_id      = module.my_vpc.vpc_id
}

# VPC Module
module "my_vpc" {
  source = "./modules/vpc"
  vpc_name         = var.vpc_name
  vpc_cidr         = var.vpc_cidr
  vpc_azs          = var.vpc_azs
  vpc_public_subnets = var.vpc_public_subnets
  vpc_private_subnets = var.vpc_private_subnets 
  vpc_database_subnets = var.vpc_database_subnets 
  vpc_tags             = var.vpc_tags
}

# ALB Module
module "my_alb" {
  source = "./modules/presentation"

  # Basic ALB variables
  alb_name       = var.alb_name
  alb_sg_name    = var.alb_sg_name
  vpc_id      = module.my_vpc.vpc_id
  #public_subnets     = module.my_vpc.vpc_public_subnets


  # ... rest of the ALB variables
}

# RDS Module
module "my_rds" {
  source = "./modules/data" 

  # Basic RDS variables
  rds_identifier = var.rds_identifier
  rds_sg_name        = var.rds_sg_name 
  vpc_id      = module.my_vpc.vpc_id
  subnet_ids  = module.my_vpc.database_subnets
  source_security_group_id = module.my_application.security_group_id
  db_subnet_group_name = module.my_vpc.database_subnet_group

}

# Module for Application Resources (if applicable)

module "my_application" {
  source = "./modules/application"
  vpc_id = module.my_vpc.vpc_id  # Passing the VPC ID
  security_group_id = module.my_alb.alb_security_group_id
  vpc_zone_identifier = module.my_vpc.private_subnets

}
