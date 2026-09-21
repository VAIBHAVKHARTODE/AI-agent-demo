locals {
  bucket_name_lower = lower(var.bucket_name)

  common_tags = {
    Environment = var.environment
    Project     = var.project
    Owner       = var.owner
    ManagedBy   = "terraform"
    Name        = "Vaibhav-Khartode-AI-POC"
  }
}