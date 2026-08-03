module "s3_deployment" {
  source            = "../../modules/s3_bucket"
  bucket_name       = var.bucket_name
  environment       = "non-prod"
  enable_versioning = false
  force_destroy     = true
}

output "bucket_arn" { value = module.s3_deployment.bucket_arn }
