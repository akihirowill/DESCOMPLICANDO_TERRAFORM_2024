terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-william"
    key    = "aula_output"
    region = "us-east-1"
  }
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }  
  }
}

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
  
}