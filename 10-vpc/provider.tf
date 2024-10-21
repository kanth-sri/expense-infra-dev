terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
  
  backend "s3" {
    bucket = "srikanth-tf-remote-state"
    key    = "expense-vpc-dev"
    region = "us-east-1"
    dynamodb_table = "srikanth-tf-lock-table"
  }
}
provider "aws" {
  region = "us-east-1"
}