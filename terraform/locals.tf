locals {
  common_tags = {
    Environment  = var.environment
    Project      = var.project
    Owner        = var.owner
    CostCenter   = var.cost_center
    ManagedBy    = "terraform"
    Terraform    = "true"
    BusinessUnit = var.business_unit
  }

  bucket_name = "${lower(var.bucket_base_name)}-${random_id.bucket_suffix.hex}"
}