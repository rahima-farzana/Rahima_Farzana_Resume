variable "bucket_name" { type = string }
variable "environment" { type = string }
variable "enable_versioning" { type = bool, default = false }
variable "enable_mfa_delete" { type = bool, default = false }
variable "force_destroy" { type = bool, default = false }
variable "storage_class" { type = string, default = "STANDARD" }
variable "enable_replication" { type = bool, default = false }
variable "replica_region" { type = string, default = "us-west-2" }
