terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Uncomment once S3 remote backend bucket is created
  # backend "s3" {
  #   bucket         = "wezva-tfstate-prod"
  #   key            = "prod/s3/terraform.tfstate"
  #   region         = "ap-south-1"
  #   dynamodb_table = "wezva-tfstate-locks-prod"
  #   encrypt        = true
  # }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "prod"
      ManagedBy   = "Terraform"
    }
  }
}
