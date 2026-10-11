output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.ec2_instance.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.ec2_instance.public_ip
}

output "private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = module.ec2_instance.private_ip
}

output "security_group_id" {
  description = "ID of the security group attached to the instance"
  value       = module.ssh_security_group.security_group_id
}

output "ami_id" {
  description = "AMI ID used for the EC2 instance"
  value       = data.aws_ami.amazon_linux_2023.id
}