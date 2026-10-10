variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Project name used for naming and tagging"
  type        = string
  default     = "vaibhavaipoc"
}

variable "environment" {
  description = "Environment name (dev, test, qa, uat, stage, prod)"
  type        = string
  default     = "prod"
}

variable "owner" {
  description = "Owner tag value"
  type        = string
  default     = "platform-team"
}

variable "cost_center" {
  description = "Cost center tag value"
  type        = string
  default     = "shared"
}

variable "business_unit" {
  description = "Business unit tag value"
  type        = string
  default     = "it"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "vaibhavaipoc"
}

variable "kms_key_alias" {
  description = "Alias name for the KMS key used to encrypt the S3 bucket"
  type        = string
  default     = "alias/vaibhavaipoc-s3"
}

variable "enable_kms_key_rotation" {
  description = "Whether to enable automatic KMS key rotation"
  type        = bool
  default     = true
}
