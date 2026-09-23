variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
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

variable "vpc_id" {
  description = "VPC ID to launch the instance in (defaults to account default VPC)"
  type        = string
  default     = "tf-agent"
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance in (defaults to a default VPC subnet)"
  type        = string
  default     = "tf-agent"
}

variable "allowed_ssh_cidrs" {
  description = "CIDR blocks allowed to SSH into the instance"
  type        = list(string)
  default     = ["10.0.0.0/8"]
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default = {
    Environment = "poc"
    Project     = "vaibhav-ai-poc"
    Owner       = "vaibhav"
    CostCenter  = "unassigned"
    ManagedBy   = "terraform"
    Terraform   = "true"
    BusinessUnit = "unassigned"
  }
}