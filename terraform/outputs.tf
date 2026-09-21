output "bucket_id" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.this.arn
}

output "bucket_regional_domain_name" {
  description = "The bucket region-specific domain name"
  value       = aws_s3_bucket.this.bucket_regional_domain_name
}

output "kms_key_id" {
  description = "The KMS key ID used for bucket encryption"
  value       = aws_kms_key.s3_kms_key.key_id
}

output "kms_key_arn" {
  description = "The KMS key ARN used for bucket encryption"
  value       = aws_kms_key.s3_kms_key.arn
}