variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "vaibhav-khartode-ai-poc"
}

variable "kms_key_alias" {
  description = "Alias name (without alias/ prefix) of the existing KMS key used to encrypt the bucket"
  type        = string
  default     = "vaibhav-khartode-ai-poc-key"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "prod"
}

variable "project" {
  description = "Project name"
  type        = string
  default     = "vaibhav-khartode-ai-poc"
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "vaibhav-khartode"
}