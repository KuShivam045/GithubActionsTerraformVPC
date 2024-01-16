terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
    backend "s3" {
        bucket = "cicd-terraform-vpc"
        key    = "dev/terraform.tfstate"
        region = "ap-south-1"
  }

}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}