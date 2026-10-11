module "sg1" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "vaibhavaipoc-sg1"
  description = "Security group for vaibhavaipoc EC2 instance - SSH access"
  vpc_id      = data.aws_vpc.default.id

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = join(",", var.ssh_cidr)
      description = "SSH access"
    }
  ]

  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = "0.0.0.0/0"
      description = "Allow all outbound traffic"
    }
  ]

  tags = var.tags
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 6.0"

  name = var.instance_name

  ami                         = data.aws_ami.amazon_linux_2023.id
  instance_type               = var.instance_type
  subnet_id                   = element(data.aws_subnets.default.ids, 0)
  vpc_security_group_ids      = [module.sg1.security_group_id]
  associate_public_ip_address = true

  root_block_device = {
      type = var.root_volume_type
      size = var.root_volume_size
      encrypted   = true
    }

  tags = var.tags
}