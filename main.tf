module "ec2_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "${var.project_name}-sg"
  description = "Security group for ${var.project_name} EC2 instance - allows SSH only"
  vpc_id      = data.aws_vpc.default.id

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH access (POC - restrict in production)"
      cidr_blocks = var.ssh_ingress_cidr
    }
  ]

  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Allow all outbound traffic"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-sg"
    }
  )
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 6.0"

  name = var.project_name

  ami                    = data.aws_ami.amazon_linux_2023.id
  instance_type           = var.instance_type
  subnet_id               = element(data.aws_subnets.default.ids, 0)
  vpc_security_group_ids  = [module.ec2_sg.security_group_id]

  root_block_device = {
      type = "gp3"
      size = var.root_volume_size
      encrypted   = true
    }

  tags = merge(
    var.tags,
    {
      Name = var.project_name
    }
  )
}