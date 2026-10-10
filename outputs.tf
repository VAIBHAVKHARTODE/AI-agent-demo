output "bucket_id" {
  description = "Name (ID) of the S3 bucket"
  value       = module.s3_bucket.s3_bucket_id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = module.s3_bucket.s3_bucket_arn
}

output "kms_key_arn" {
  description = "ARN of the KMS key used for bucket encryption"
  value       = module.s3_kms_key.key_arn
}

output "kms_key_alias" {
  description = "Alias of the KMS key used for bucket encryption"
  value       = var.kms_key_alias
}