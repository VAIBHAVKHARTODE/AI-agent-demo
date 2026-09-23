variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "vaibhav-khartode-ai-newpoc"
}

variable "project" {
  description = "Project name for tagging"
  type        = string
  default     = "vaibhav-khartode-ai-newpoc"
}

variable "environment" {
  description = "Environment name (dev, test, qa, uat, stage, prod)"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner tag value"
  type        = string
  default     = "vaibhav-khartode"
}

variable "cost_center" {
  description = "Cost center tag value"
  type        = string
  default     = "unassigned"
}

variable "business_unit" {
  description = "Business unit tag value"
  type        = string
  default     = "unassigned"
}

variable "kms_deletion_window_in_days" {
  description = "Number of days before the KMS key is deleted after destruction"
  type        = number
  default     = 30
}

variable "enable_kms_key_rotation" {
  description = "Whether to enable automatic KMS key rotation"
  type        = bool
  default     = true
}