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
  default     = "unassigned"
}

variable "business_unit" {
  description = "BusinessUnit tag value"
  type        = string
  default     = "unassigned"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "vaibhavaipoc"
}

variable "security_group_name" {
  description = "Name of the security group attached to the EC2 instance"
  type        = string
  default     = "vaibhavaipoc-sg1"
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
  description = "CIDR block allowed to SSH into the instance. Restrict this in production environments."
  type        = string
  default     = "0.0.0.0/0"
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "vaibhavaipoc"
    Owner       = "platform-team"
    CostCenter  = "unassigned"
    ManagedBy   = "terraform"
    Terraform   = "true"
    BusinessUnit = "unassigned"
  }
}
