variable "aws_region" { 
  default = "ap-south-1" 
}

variable "dr_region" { 
  default = "us-west-2" 
}

variable "bucket_name" {}

variable "environment" {
  type        = string
  description = "Target deployment environment"
  default     = "prod"
}
