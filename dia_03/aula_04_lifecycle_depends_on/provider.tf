terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-william"
    key    = "aula_mv_lifecycle_dependes_on"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}