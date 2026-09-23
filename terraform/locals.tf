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
}
variable "business_unit" {
  type    = string
  default = "example"
}

variable "cost_center" {
  type    = string
  default = "example"
}

variable "environment" {
  type    = string
  default = "example"
}

variable "owner" {
  type    = string
  default = "example"
}

variable "project" {
  type    = string
  default = "example"
}
