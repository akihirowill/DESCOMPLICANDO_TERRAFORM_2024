terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-william"
    key    = "aula_conditional"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#Configure thw AWS Provider
provider "aws" {
  region = "us-east-1"
}