module "ec2_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name            = "vaibhavaipoc-sg"
  use_name_prefix = false
  description     = "SG for vaibhavaipoc EC2 - allows SSH only"
  vpc_id          = data.aws_vpc.default.id

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      ip_protocol = "tcp"
      description = "SSH access"
      cidr_blocks = var.ssh_ingress_cidr
    }
  ]

  egress_rules = ["all-all"]

  tags = merge(var.tags, {
    Name = "vaibhavaipoc-sg"
  })
}

module "ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 6.0"

  name = "vaibhavaipoc"

  ami                    = data.aws_ami.al2023.id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnets.default.ids[0]
  create_security_group  = false
  vpc_security_group_ids = [module.ec2_sg.security_group_id]

  root_block_device = {
      size           = var.root_volume_size
      type           = "gp3"
      encrypted             = true
      delete_on_termination = true
    }

  tags = merge(var.tags, {
    Name = "vaibhavaipoc"
  })
}