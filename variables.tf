variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Project name used for tagging"
  type        = string
  default     = "vaibhav"
}

variable "environment" {
  description = "Environment name (dev, test, qa, uat, stage, prod)"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner of the infrastructure for tagging"
  type        = string
  default     = "vaibhav"
}

variable "cost_center" {
  description = "Cost center for tagging"
  type        = string
  default     = "poc"
}

variable "business_unit" {
  description = "Business unit for tagging"
  type        = string
  default     = "engineering"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag applied to the EC2 instance"
  type        = string
  default     = "vaibhav-ai-poc-instance"
}
