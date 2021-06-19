terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

module "ecr_program" {
  source = "../ecr_module"
  ecr_name = var.ecr_name
  
} 