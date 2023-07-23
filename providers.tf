provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "terraform-tfstate-hsulimann"
    key    = "vpc.tfstate"
    region = "us-east-1"
  }
}