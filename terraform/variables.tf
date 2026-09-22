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

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
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

variable "kms_deletion_window_in_days" {
  description = "Number of days before KMS key is deleted after destruction"
  type        = number
  default     = 30
}