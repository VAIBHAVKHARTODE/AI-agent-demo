data "aws_kms_alias" "existing" {
  name = "alias/${var.kms_key_alias}"
}