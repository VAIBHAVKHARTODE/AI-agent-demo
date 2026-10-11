locals {
  name = "${var.project}-${var.environment}-ec2"

  tags = {
    Environment  = var.environment
    Project      = var.project
    Owner        = var.owner
    CostCenter   = var.cost_center
    ManagedBy    = "terraform"
    Terraform    = "true"
    BusinessUnit = var.business_unit
  }
}