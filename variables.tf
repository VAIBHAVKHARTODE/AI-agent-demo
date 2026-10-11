variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource naming and tagging"
  type        = string
  default     = "vaibhavaipoc"
}

variable "environment" {
  description = "Environment name (dev/test/qa/uat/stage/prod)"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "root_volume_size" {
  description = "Root volume size in GB (minimum 30)"
  type        = number
  default     = 30
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the instance (POC only - open to all)"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "associate_public_ip" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
  default     = true
}
