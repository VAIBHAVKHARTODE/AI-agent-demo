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
  default     = "prod"
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "platform-team"
}

variable "cost_center" {
  description = "Cost center for billing tagging"
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

variable "kms_deletion_window_in_days" {
  description = "Waiting period before KMS key deletion"
  type        = number
  default     = 30
}

variable "kms_key_alias" {
  description = "Alias for the KMS key used to encrypt the S3 bucket"
  type        = string
  default     = "alias/vaibhavaipoc-s3"
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default = {
    Environment   = "prod"
    Project       = "vaibhavaipoc"
    Owner         = "platform-team"
    CostCenter    = "unassigned"
    ManagedBy     = "terraform"
    Terraform     = "true"
    BusinessUnit  = "unassigned"
  }
}
