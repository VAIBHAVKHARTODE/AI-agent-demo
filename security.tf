module "ec2_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "${var.project}-${var.environment}-${var.instance_name}-sg"
  description = "Security group for ${local.name} EC2 instance"
  vpc_id      = data.aws_vpc.default.id

  egress_rules = ["all-all"]

  tags = local.tags
}