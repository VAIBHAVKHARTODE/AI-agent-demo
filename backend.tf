# Managed by AI Terraform Agent — Terraform state in S3
terraform {
  backend "s3" {
    bucket  = "vaibhav-ai-poc-state-files"
    key     = "VAIBHAVKHARTODE/AI-agent-demo/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
