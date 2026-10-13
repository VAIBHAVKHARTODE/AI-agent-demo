locals {
  common_tags = {
    Environment = var.environment
    Project     = var.project_name
    Owner       = "platform-team"
    CostCenter  = "unassigned"
    ManagedBy   = "terraform"
    Terraform   = "true"
    BusinessUnit = "unassigned"
  }
}