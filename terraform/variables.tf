variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Base name for the S3 bucket"
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
  default     = "ai-poc"
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "vaibhav-khartode"
}

variable "cost_center" {
  description = "Cost center tag"
  type        = string
  default     = "unassigned"
}

variable "business_unit" {
  description = "Business unit tag"
  type        = string
  default     = "unassigned"
}

variable "kms_deletion_window_in_days" {
  description = "Number of days before KMS key is deleted after destruction request"
  type        = number
  default     = 30
}

variable "enable_kms_key_rotation" {
  description = "Whether to enable automatic KMS key rotation"
  type        = bool
  default     = true
}