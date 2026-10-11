module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 6.0"

  name = local.name

  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  subnet_id                   = element(data.aws_subnets.default.ids, 0)
  vpc_security_group_ids      = [module.ec2_sg.security_group_id]
  associate_public_ip_address = false
  monitoring                  = true

  root_block_device = {
      type = "gp3"
      size = var.root_volume_size
      encrypted   = true
    }

  tags = local.tags
}