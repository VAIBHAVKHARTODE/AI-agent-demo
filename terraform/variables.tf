variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Project name used for naming and tagging"
  type        = string
  default     = "vaibhav-ai-poc"
}

variable "environment" {
  description = "Environment name (dev, test, qa, uat, stage, prod)"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "vaibhav"
}

variable "cost_center" {
  description = "Cost center tag"
  type        = string
  default     = "unassigned"
}

variable "business_unit" {
  description = "Business unit tag"
  type        = string
  default     = "engineering"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "vaibhav-ai-poc-instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "root_volume_size" {
  description = "Root EBS volume size in GB"
  type        = number
  default     = 8
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default = {
    Environment   = "dev"
    Project       = "vaibhav-ai-poc"
    Owner         = "vaibhav"
    CostCenter    = "unassigned"
    ManagedBy     = "terraform"
    Terraform     = "true"
    BusinessUnit  = "engineering"
  }
}