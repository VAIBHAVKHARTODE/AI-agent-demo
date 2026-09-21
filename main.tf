resource "random_id" "bucket_suffix" {
  byte_length = 4
}

# KMS Key for S3 bucket encryption
resource "aws_kms_key" "s3_kms_key" {
  description             = "KMS key for S3 bucket ${local.bucket_name_lower} encryption"
  deletion_window_in_days = var.kms_deletion_window_in_days
  enable_key_rotation      = var.enable_kms_key_rotation

  tags = merge(
    local.common_tags,
    {
      Name = "${local.bucket_name_lower}-kms-key"
    }
  )
}

resource "aws_kms_alias" "s3_kms_key_alias" {
  name          = "alias/${local.bucket_name_lower}-key"
  target_key_id = aws_kms_key.s3_kms_key.key_id
}

# S3 Bucket
resource "aws_s3_bucket" "this" {
  bucket        = "${local.bucket_name_lower}-${random_id.bucket_suffix.hex}"
  force_destroy = false

  tags = local.common_tags
}

# Versioning
resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Server-side Encryption using KMS
resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.s3_kms_key.arn
    }
    bucket_key_enabled = true
  }
}

# Block Public Access
resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}