module "ec2_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "${local.name}-instance-sg"
  description = "Security group for ${var.instance_name}"
  vpc_id      = module.vpc.vpc_id

  egress_rules = ["all-all"]

  tags = local.common_tags
}
variable "instance_name" {
  type    = string
  default = "tf-agent-instance-name"
}
