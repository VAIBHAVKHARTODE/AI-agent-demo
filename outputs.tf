output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.ec2.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.ec2.public_ip
}

output "instance_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = module.ec2.private_ip
}

output "security_group_id" {
  description = "ID of the security group attached to the EC2 instance"
  value       = module.ec2_sg.security_group_id
}

output "ami_id" {
  description = "AMI ID used for the EC2 instance"
  value       = data.aws_ami.al2023.id
}