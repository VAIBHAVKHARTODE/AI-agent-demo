locals {
  common_tags = {
    Environment = var.environment
    Project     = var.project
    Owner       = var.owner
    CostCenter  = "default"
    ManagedBy   = "terraform"
    Terraform   = "true"
    BusinessUnit = "default"
  }
}