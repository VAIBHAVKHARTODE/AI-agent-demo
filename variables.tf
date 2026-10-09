variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Project name used for tagging and naming"
  type        = string
  default     = "vaibhavaipoc"
}

variable "environment" {
  description = "Environment name (dev, test, qa, uat, stage, prod)"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "platform-team"
}

variable "cost_center" {
  description = "Cost center for billing/tagging"
  type        = string
  default     = "unassigned"
}

variable "business_unit" {
  description = "Business unit for tagging"
  type        = string
  default     = "unassigned"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "vaibhavaipoc"
}

variable "kms_key_deletion_window_in_days" {
  description = "KMS key deletion window in days"
  type        = number
  default     = 30
}

variable "enable_kms_key_rotation" {
  description = "Enable automatic KMS key rotation"
  type        = bool
  default     = true
}
