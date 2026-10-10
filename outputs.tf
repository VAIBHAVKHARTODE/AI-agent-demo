output "bucket_id" {
  description = "The name of the S3 bucket"
  value       = module.s3_bucket.s3_bucket_id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = module.s3_bucket.s3_bucket_arn
}

output "kms_key_arn" {
  description = "The ARN of the KMS key used for bucket encryption"
  value       = module.kms_key.key_arn
}

output "kms_key_id" {
  description = "The ID of the KMS key used for bucket encryption"
  value       = module.kms_key.key_id
}