terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-william"
    key    = "aula_import"
    region = "us-east-1"
  }
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }  
  } 
}

provider "aws" {
    region = "us-east-1"
  
}