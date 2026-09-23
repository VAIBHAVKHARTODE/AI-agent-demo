resource "aws_kms_key" "s3_key" {
  description             = "KMS key for encrypting S3 bucket ${var.bucket_name}"
  deletion_window_in_days = var.kms_deletion_window_in_days
  enable_key_rotation     = var.enable_kms_key_rotation

  tags = merge(
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}-s3-kms-key"
    }
  )
}

resource "aws_kms_alias" "s3_key_alias" {
  name          = "alias/${var.project}-${var.environment}-s3-key"
  target_key_id = aws_kms_key.s3_key.key_id
}