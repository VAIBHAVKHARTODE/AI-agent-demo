locals {
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

module "instance_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "${var.project}-${var.environment}-instance-sg"
  description = "Security group for ${var.instance_name} (egress only, no inbound)"
  vpc_id      = data.aws_vpc.default.id

  egress_rules = ["all-all"]

  tags = local.tags
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  name = var.instance_name

  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnets.default.ids[0]
  vpc_security_group_ids = [module.instance_sg.security_group_id]

  associate_public_ip_address = false

  root_block_device = [
    {
      volume_type = "gp3"
      volume_size = var.root_volume_size
      encrypted   = true
    }
  ]

  tags = merge(
    local.tags,
    {
      Name = var.instance_name
    }
  )
}