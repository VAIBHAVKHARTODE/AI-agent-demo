module "kms_key" {
  source  = "terraform-aws-modules/kms/aws"
  version = "~> 3.0"

  description             = "KMS key for ${var.bucket_name} S3 bucket encryption"
  deletion_window_in_days = var.kms_deletion_window_in_days
  enable_key_rotation      = true

  aliases = [replace(var.kms_key_alias, "alias/", "")]

  tags = var.tags
}