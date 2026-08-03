terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
  backend "s3" {
    bucket         = "wezva-tfstate-nonprod"
    key            = "non-prod/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "wezva-tfstate-locks-nonprod"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = { Environment = "non-prod", ManagedBy = "Terraform" }
  }
}
