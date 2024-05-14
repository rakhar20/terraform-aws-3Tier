terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

# terraform {
#   backend "s3" {
#     bucket         = var.your_bucket_name_for_backend 
#     key            = "terraform.tfstate"
#     region         = var.your_bucket_region_for_backend 
#   }
# }