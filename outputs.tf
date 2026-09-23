output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnets
}

output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = module.ec2_instance.id
}

output "instance_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = module.ec2_instance.private_ip
}

output "instance_security_group_id" {
  description = "Security group ID attached to the EC2 instance"
  value       = module.ec2_sg.security_group_id
}