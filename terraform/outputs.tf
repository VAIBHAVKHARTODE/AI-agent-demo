output "bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  description = "ARN of the created S3 bucket"
  value       = aws_s3_bucket.this.arn
}

output "kms_key_arn" {
  description = "ARN of the KMS key used for bucket encryption"
  value       = aws_kms_key.s3_kms_key.arn
}

output "kms_key_alias" {
  description = "Alias of the KMS key used for bucket encryption"
  value       = aws_kms_alias.s3_kms_key_alias.name
}