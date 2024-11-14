/*
output "ec2_instance" {
  description = "The ARN of the VPC"
  value       = aws_instance.web_server.tags.Name
}
*/

output "instance_id" {
  value = module.server.instance_id
}

output "public_ip" {
  value = module.server.public_ip
}

output "aws_regions" {
  value = var.aws_region
}