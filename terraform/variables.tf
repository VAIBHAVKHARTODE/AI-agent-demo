variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Base name for the S3 bucket (will be lowercased and suffixed for global uniqueness)"
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
  description = "Owner of the resource"
  type        = string
  default     = "vaibhav-khartode"
}

variable "cost_center" {
  description = "Cost center for billing"
  type        = string
  default     = "unassigned"
}

variable "kms_deletion_window_in_days" {
  description = "Number of days before KMS key is deleted after destruction request"
  type        = number
  default     = 30
}