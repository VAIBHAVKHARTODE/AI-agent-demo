variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "vaibhav-khartode-ai-poc"
}

variable "kms_alias_name" {
  description = "Existing KMS key alias name (without alias/ prefix) used for S3 bucket encryption"
  type        = string
  default     = "alias/vaibhav-khartode-ai-poc-key"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "poc"
}

variable "project" {
  description = "Project name"
  type        = string
  default     = "vaibhav-khartode-ai-poc"
}

variable "owner" {
  description = "Owner of the resource"
  type        = string
  default     = "vaibhav-khartode"
}