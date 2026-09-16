```hcl
data "aws_kms_key" "default" {
  key_id = "alias/aws/s3"  # Using AWS managed key for simplicity
}
```