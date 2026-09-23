output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = module.ec2_instance.id
}

output "instance_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = module.ec2_instance.private_ip
}

output "security_group_id" {
  description = "ID of the security group attached to the instance"
  value       = module.instance_sg.security_group_id
}