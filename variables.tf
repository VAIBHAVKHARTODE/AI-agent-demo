variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
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
  description = "Size of the root EBS volume in GB"
  type        = number
  default     = 30
}

variable "root_volume_type" {
  description = "Type of the root EBS volume"
  type        = string
  default     = "gp3"
}

variable "ssh_cidr" {
  description = "List of CIDR blocks allowed to SSH into the instance"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default = {
    Project     = "vaibhavaipoc"
    Environment = "dev"
    Owner       = "vaibhavaipoc"
    CostCenter  = "vaibhavaipoc"
    ManagedBy   = "terraform"
    BusinessUnit = "vaibhavaipoc"
    Terraform   = "true"
  }
}
