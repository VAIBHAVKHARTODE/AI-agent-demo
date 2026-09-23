module "instance_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "${var.project}-${var.environment}-instance-sg"
  description = "Security group for ${var.instance_name}"
  vpc_id      = data.aws_vpc.default.id

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH access"
      cidr_blocks = "10.0.0.0/8"
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

  tags = var.tags
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  name = var.instance_name

  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = element(data.aws_subnets.default.ids, 0)
  vpc_security_group_ids = [module.instance_sg.security_group_id]

  root_block_device = [
    {
      volume_size = var.root_volume_size
      volume_type = "gp3"
      encrypted   = true
    }
  ]

  tags = merge(
    var.tags,
    {
      Name = var.instance_name
    }
  )
}
variable "environment" {
  type    = string
  default = "example"
}

variable "instance_name" {
  type    = string
  default = "tf-agent-instance-name"
}

variable "instance_type" {
  type    = string
  default = "example"
}

variable "project" {
  type    = string
  default = "example"
}

variable "root_volume_size" {
  type    = string
  default = 2
}

variable "tags" {
  type    = string
  default = "example"
}
