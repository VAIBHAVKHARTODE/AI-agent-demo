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
  description = "Root EBS volume size in GB (minimum 30 GB)"
  type        = number
  default     = 30
}

variable "ssh_ingress_cidr" {
  description = "CIDR block allowed to SSH into the instance (POC only, restrict to your IP in production)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "vaibhavaipoc"
    Owner       = "platform-team"
    CostCenter  = "default"
    ManagedBy   = "terraform"
    BusinessUnit = "default"
  }
}
