output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = module.ec2_instance.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.ec2_instance.public_ip
}

output "instance_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = module.ec2_instance.private_ip
}

output "security_group_id" {
  description = "ID of the security group attached to the EC2 instance"
  value       = module.ec2_sg.security_group_id
}

output "default_vpc_id" {
  description = "ID of the default VPC used for this deployment"
  value       = data.aws_vpc.default.id
}