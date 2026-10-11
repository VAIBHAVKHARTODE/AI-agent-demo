module "s3_kms_key" {
  source  = "terraform-aws-modules/kms/aws"
  version = "~> 3.0"

  description             = "KMS key for ${var.bucket_name} S3 bucket encryption"
  enable_key_rotation     = true
  deletion_window_in_days = 30

  key_administrators = [
    "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
  ]

  key_statements = [
    {
      sid    = "AllowS3ServiceUse"
      effect = "Allow"
      principals = [
        {
          type        = "Service"
          identifiers = ["s3.amazonaws.com"]
        }
      ]
      actions = [
        "kms:Decrypt",
        "kms:GenerateDataKey*"
      ]
      resources = ["*"]
    }
  ]

  aliases = ["s3/${var.bucket_name}"]

  tags = local.tags
}