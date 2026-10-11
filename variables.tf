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

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "vaibhavaipoc"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "root_volume_size" {
  description = "Root EBS volume size in GB"
  type        = number
  default     = 30
}

variable "root_volume_type" {
  description = "Root EBS volume type"
  type        = string
  default     = "gp3"
}

variable "ssh_allowed_cidr" {
  description = "CIDR blocks allowed to SSH into the instance"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "owner" {
  description = "Owner tag value"
  type        = string
  default     = "platform-team"
}

variable "cost_center" {
  description = "CostCenter tag value"
  type        = string
  default     = "default"
}

variable "business_unit" {
  description = "BusinessUnit tag value"
  type        = string
  default     = "default"
}
