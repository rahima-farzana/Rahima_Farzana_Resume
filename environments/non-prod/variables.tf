variable "aws_region" {
  default = "ap-south-1"
}

variable "bucket_name" {}

variable "environment" {
  type        = string
  description = "Target deployment environment"
  default     = "non-prod"
}
