terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

#Configure thw AWS Provider
provider "aws" {
  region = "us-east-1"
}