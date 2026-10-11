module "security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "${var.project_name}-sg"
  description = "Security group allowing SSH access for ${var.project_name}"
  vpc_id      = data.aws_vpc.default.id

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH access"
      cidr_blocks = join(",", var.allowed_ssh_cidr)
    }
  ]

  egress_rules = ["all-all"]

  tags = merge(local.tags, {
    Name = "${var.project_name}-sg"
  })
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 6.0"

  name = var.project_name

  ami                         = data.aws_ami.amazon_linux_2023.id
  instance_type               = var.instance_type
  subnet_id                   = data.aws_subnets.default.ids[0]
  vpc_security_group_ids      = [module.security_group.security_group_id]
  associate_public_ip_address = var.associate_public_ip

  root_block_device = {
      type = "gp3"
      size = var.root_volume_size
      encrypted   = true
    }

  tags = merge(local.tags, {
    Name = var.project_name
  })
}