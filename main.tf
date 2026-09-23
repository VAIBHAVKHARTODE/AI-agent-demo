module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  name = var.instance_name

  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = module.vpc.private_subnets[0]
  vpc_security_group_ids = [module.ec2_sg.security_group_id]

  associate_public_ip_address = false
  monitoring                  = true

  metadata_options = {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
  }

  root_block_device = [
    {
      volume_type = "gp3"
      volume_size = 20
      encrypted   = true
    }
  ]

  tags = local.common_tags
}
variable "instance_name" {
  type    = string
  default = "tf-agent-instance-name"
}

variable "instance_type" {
  type    = string
  default = "example"
}
