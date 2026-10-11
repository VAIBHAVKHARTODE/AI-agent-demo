variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "vaibhavaipoc"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Project name"
  type        = string
  default     = "vaibhavaipoc"
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "vaibhav"
}

variable "cost_center" {
  description = "Cost center for billing"
  type        = string
  default     = "default-cost-center"
}

variable "business_unit" {
  description = "Business unit owning the resources"
  type        = string
  default     = "default-bu"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "root_volume_size" {
  description = "Root volume size in GB"
  type        = number
  default     = 30
}

variable "root_volume_type" {
  description = "Root volume type"
  type        = string
  default     = "gp3"
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the instance"
  type        = string
  default     = "0.0.0.0/0"
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP with the instance"
  type        = bool
  default     = true
}
