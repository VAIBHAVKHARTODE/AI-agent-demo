variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for tagging and naming resources"
  type        = string
  default     = "vaibhavaipoc"
}

variable "environment" {
  description = "Environment name (dev, test, qa, uat, stage, prod)"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "root_volume_size" {
  description = "Root volume size in GB (minimum 30 GB)"
  type        = number
  default     = 30
}

variable "ssh_ingress_cidr" {
  description = "CIDR block allowed to SSH into the instance (POC only, restrict in production)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "owner" {
  description = "Owner tag value"
  type        = string
  default     = "platform-team"
}

variable "cost_center" {
  description = "Cost center tag value"
  type        = string
  default     = "default"
}

variable "business_unit" {
  description = "Business unit tag value"
  type        = string
  default     = "default"
}
