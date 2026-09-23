variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "instance_name" {
  description = "Name/tag for the EC2 instance"
  type        = string
  default     = "vaibhav-ai-poc-instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "environment" {
  description = "Environment name (dev, test, qa, uat, stage, prod)"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Project name"
  type        = string
  default     = "vaibhav-ai-poc"
}

variable "owner" {
  description = "Owner of the resource"
  type        = string
  default     = "vaibhav"
}

variable "cost_center" {
  description = "Cost center for billing"
  type        = string
  default     = "unassigned"
}

variable "business_unit" {
  description = "Business unit owning the resource"
  type        = string
  default     = "unassigned"
}

variable "root_volume_size" {
  description = "Root EBS volume size in GB"
  type        = number
  default     = 8
}
