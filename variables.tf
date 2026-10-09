variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Project name used for naming and tagging"
  type        = string
  default     = "vaibhavaipoc"
}

variable "environment" {
  description = "Environment name (dev, test, qa, uat, stage, prod)"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner tag value"
  type        = string
  default     = "platform-team"
}

variable "cost_center" {
  description = "CostCenter tag value"
  type        = string
  default     = "shared"
}

variable "business_unit" {
  description = "BusinessUnit tag value"
  type        = string
  default     = "engineering"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "vaibhavaipocbucket"
}

variable "kms_key_alias" {
  description = "Alias name for the KMS key used to encrypt the S3 bucket"
  type        = string
  default     = "alias/vaibhavaipocbucket-s3"
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "vaibhavaipoc"
    Owner       = "platform-team"
    CostCenter  = "shared"
    ManagedBy   = "terraform"
    Terraform   = "true"
    BusinessUnit = "engineering"
  }
}
