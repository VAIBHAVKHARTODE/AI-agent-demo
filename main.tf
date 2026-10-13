module "ec2_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name            = "${var.project_name}-sg"
  use_name_prefix = false
  description     = "Security group for ${var.project_name} EC2 instance - SSH access only"
  vpc_id          = data.aws_vpc.default.id

  ingress_cidr_blocks = [var.ssh_ingress_cidr]
  ingress_rules       = ["ssh-tcp"]
  egress_rules        = ["all-all"]

  tags = local.tags
}

module "ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 6.0"

  name = var.project_name

  ami                    = data.aws_ami.al2023.id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnets.default.ids[0]
  create_security_group  = false
  vpc_security_group_ids = [module.ec2_sg.security_group_id]

  root_block_device = {
      type = "gp3"
      size = var.root_volume_size
      encrypted   = true
    }

  tags = local.tags
}