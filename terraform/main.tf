resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_kms_key" "s3_key" {
  description             = "KMS key for encrypting S3 bucket ${var.bucket_name}"
  deletion_window_in_days = var.kms_deletion_window_in_days
  enable_key_rotation     = var.enable_kms_key_rotation

  tags = merge(
    local.common_tags,
    {
      Name = "${var.bucket_name}-kms-key"
    }
  )
}

resource "aws_kms_alias" "s3_key_alias" {
  name          = "alias/${var.bucket_name}-${random_id.bucket_suffix.hex}"
  target_key_id = aws_kms_key.s3_key.key_id
}

resource "aws_s3_bucket" "this" {
  bucket        = "${var.bucket_name}-${random_id.bucket_suffix.hex}"
  force_destroy = false

  tags = merge(
    local.common_tags,
    {
      Name = "${var.bucket_name}-${random_id.bucket_suffix.hex}"
    }
  )
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.s3_key.arn
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}