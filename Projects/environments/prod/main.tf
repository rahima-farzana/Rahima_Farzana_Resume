module "s3_deployment" {
  source             = "../../modules/s3_bucket"
  bucket_name        = var.bucket_name
  environment        = "production"
  enable_versioning  = true
  enable_mfa_delete  = true
  force_destroy      = false
  enable_replication = true
  replica_region     = var.dr_region
}

output "bucket_arn" { value = module.s3_deployment.bucket_arn }
