data "aws_kms_alias" "existing" {
  name = var.kms_alias_name
}