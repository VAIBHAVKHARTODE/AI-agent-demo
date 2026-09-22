resource "aws_kms_key" "s3_key" {
  description             = "KMS key for encrypting ${var.bucket_name} S3 bucket"
  deletion_window_in_days = var.kms_deletion_window_in_days
  enable_key_rotation     = true

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "EnableRootAccountPermissions"
        Effect    = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
        }
        Action   = "kms:*"
        Resource = "*"
      }
    ]
  })

  tags = merge(
    local.common_tags,
    {
      Name = "${var.bucket_name}-kms-key"
    }
  )
}

resource "aws_kms_alias" "s3_key_alias" {
  name          = "alias/${var.bucket_name}-key"
  target_key_id = aws_kms_key.s3_key.key_id
}