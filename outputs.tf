output "s3_bucket_id" {
  description = "Name (ID) of the S3 bucket"
  value       = module.s3_bucket.s3_bucket_id
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = module.s3_bucket.s3_bucket_arn
}

output "s3_bucket_region" {
  description = "AWS region the S3 bucket resides in"
  value       = module.s3_bucket.s3_bucket_region
}

output "kms_key_arn" {
  description = "ARN of the KMS key used for S3 bucket encryption"
  value       = module.s3_kms_key.key_arn
}

output "kms_key_id" {
  description = "ID of the KMS key used for S3 bucket encryption"
  value       = module.s3_kms_key.key_id
}