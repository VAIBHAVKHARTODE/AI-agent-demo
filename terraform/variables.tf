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

variable "kms_alias_name" {
  description = "Name of the existing KMS key alias used for S3 bucket encryption (must already exist)"
  type        = string
  default     = "alias/vaibhav-khartode-ai-poc-key"
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