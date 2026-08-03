variable "aws_region" { default = "us-east-1" }
variable "dr_region" { default = "us-west-2" }
variable "bucket_name" {}

variable "environment" {
  type        = string
  description = "Target deployment environment (e.g., prod, non-prod)"
  default     = "prod"
}
