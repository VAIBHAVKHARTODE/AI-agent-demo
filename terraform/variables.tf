variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Base name for the S3 bucket (will be lowercased and suffixed for uniqueness)"
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

variable "cost_center" {
  description = "Cost center for billing"
  type        = string
  default     = "default-cost-center"
}

variable "business_unit" {
  description = "Business unit"
  type        = string
  default     = "default-bu"
}

variable "kms_deletion_window_in_days" {
  description = "Number of days before KMS key is deleted after being scheduled for deletion"
  type        = number
  default     = 30
}

variable "enable_kms_key_rotation" {
  description = "Whether to enable automatic rotation of the KMS key"
  type        = bool
  default     = true
}