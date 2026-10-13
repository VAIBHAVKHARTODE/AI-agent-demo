locals {
  tags = {
    Environment  = var.environment
    Project      = var.project_name
    Owner        = var.owner
    CostCenter   = var.cost_center
    ManagedBy    = "terraform"
    Terraform    = "true"
    BusinessUnit = var.business_unit
  }
}