output "bucket_id" {
  description = "The name (ID) of the S3 bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.this.arn
}

output "kms_key_arn" {
  description = "The ARN of the KMS key used for bucket encryption"
  value       = aws_kms_key.s3_key.arn
}

output "kms_key_alias" {
  description = "The alias of the KMS key used for bucket encryption"
  value       = aws_kms_alias.s3_key_alias.name
}