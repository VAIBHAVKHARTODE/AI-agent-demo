locals {
  common_tags = {
    Environment = var.environment
    Project     = var.project
    Owner       = var.owner
    CostCenter  = "shared"
    ManagedBy   = "terraform"
    Terraform   = "true"
    BusinessUnit = "engineering"
  }
}