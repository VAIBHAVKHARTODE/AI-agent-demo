# Reference the existing KMS key alias instead of creating a new one,
# since the alias already exists in the account.
data "aws_kms_alias" "existing" {
  name = var.kms_alias_name
}