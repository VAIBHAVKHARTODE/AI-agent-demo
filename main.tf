locals {
  subnet_id = var.subnet_id != "" ? var.subnet_id : data.aws_subnets.selected.ids[0]
}

module "instance_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "${var.instance_name}-sg"
  description = "Security group for ${var.instance_name}"
  vpc_id      = data.aws_vpc.selected.id

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH access"
      cidr_blocks = join(",", var.allowed_ssh_cidrs)
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
  subnet_id              = local.subnet_id
  vpc_security_group_ids = [module.instance_sg.security_group_id]

  root_block_device = [
    {
      volume_type = "gp3"
      volume_size = var.root_volume_size
      encrypted   = true
    }
  ]

  monitoring = true

  tags = merge(
    var.tags,
    {
      Name = var.instance_name
    }
  )
}
variable "allowed_ssh_cidrs" {
  type    = string
  default = "10.0.0.0/16"
}

variable "instance_name" {
  type    = string
  default = "tf-agent-instance-name"
}

variable "instance_type" {
  type    = string
  default = "example"
}

variable "root_volume_size" {
  type    = string
  default = 2
}

variable "subnet_id" {
  type    = string
  default = "example"
}

variable "tags" {
  type    = string
  default = "example"
}
