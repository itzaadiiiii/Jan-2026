terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      # version = "~> 5.0"
      version = "6.27.0"
    }
  }
  required_version = ">= 1.14.0"

  backend "s3" {
    bucket = "terraform-bucketttttt-2026"
    key    = "/terraform.tfstate"
    region = "us-east-1"
    use_locking = true
  }
}

  
provider "aws" {
  region = "us-east-1"
}