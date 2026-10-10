module "s3_kms_key" {
  source  = "terraform-aws-modules/kms/aws"
  version = "~> 3.0"

  description             = "KMS key for ${var.bucket_name} S3 bucket encryption"
  key_usage               = "ENCRYPT_DECRYPT"
  enable_key_rotation     = var.enable_kms_key_rotation
  deletion_window_in_days = 30

  aliases = [replace(var.kms_key_alias, "alias/", "")]

  tags = local.tags
}