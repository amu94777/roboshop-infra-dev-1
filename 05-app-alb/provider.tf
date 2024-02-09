terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "jaya123-s3-bucket-dev"
    key    = "05-app-alb"
    region = "us-east-1"
    dynamodb_table = "jaya123-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}