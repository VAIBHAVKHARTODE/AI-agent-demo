locals {
  tags = {
    project     = var.project_name
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = "terraform"
  }
}