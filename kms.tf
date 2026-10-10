module "s3_kms_key" {
  source  = "terraform-aws-modules/kms/aws"
  version = "~> 3.0"

  description             = "KMS key for ${var.bucket_name} S3 bucket encryption"
  enable_key_rotation     = true
  deletion_window_in_days = var.kms_key_deletion_window_in_days

  key_administrators = [
    "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
  ]

  key_statements = [
    {
      sid    = "AllowS3Service"
      effect = "Allow"
      actions = [
        "kms:Decrypt",
        "kms:GenerateDataKey*",
        "kms:Encrypt",
        "kms:DescribeKey"
      ]
      resources = ["*"]
      principals = [
        {
          type        = "Service"
          identifiers = ["s3.amazonaws.com"]
        }
      ]
    }
  ]

  aliases = ["${var.project}-${var.environment}-s3"]

  tags = local.tags
}