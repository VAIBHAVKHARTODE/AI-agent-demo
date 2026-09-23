module "instance_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "${var.project}-${var.environment}-poc-sg"
  description = "Security group for ${var.instance_name} EC2 instance"
  vpc_id      = data.aws_vpc.default.id

  egress_rules = ["all-all"]

  tags = local.tags
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 6.0"

  name = var.instance_name

  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = var.instance_type
  subnet_id              = tolist(data.aws_subnets.default.ids)[0]
  vpc_security_group_ids = [module.instance_sg.security_group_id]

  associate_public_ip_address = false
  monitoring                  = true

  tags = merge(
    local.tags,
    {
      Name = var.instance_name
    }
  )
}