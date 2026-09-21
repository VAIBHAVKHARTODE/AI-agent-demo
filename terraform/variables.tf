variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Project name used for naming and tagging"
  type        = string
  default     = "Vaibhav-Khartode-AI-POC"
}

variable "environment" {
  description = "Environment name (dev, test, qa, uat, stage, prod)"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "Vaibhav-Khartode"
}

variable "cost_center" {
  description = "Cost center for billing/tagging purposes"
  type        = string
  default     = "unassigned"
}

variable "business_unit" {
  description = "Business unit for tagging purposes"
  type        = string
  default     = "unassigned"
}

variable "bucket_base_name" {
  description = "Base name for the S3 bucket (will be lowercased and suffixed for global uniqueness)"
  type        = string
  default     = "vaibhav-khartode-ai-poc"
}

variable "kms_deletion_window_in_days" {
  description = "Number of days before KMS key is deleted after being scheduled for deletion"
  type        = number
  default     = 30
}

variable "enable_kms_key_rotation" {
  description = "Enable automatic KMS key rotation"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Whether to allow the bucket to be destroyed even if it contains objects"
  type        = bool
  default     = false
}