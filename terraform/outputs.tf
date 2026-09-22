output "bucket_id" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.this.arn
}

output "kms_key_arn" {
  description = "The ARN of the existing KMS key used for bucket encryption"
  value       = data.aws_kms_alias.existing.target_key_arn
}