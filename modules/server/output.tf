output "instance_id" {
  value = aws_instance.dev-server.id
}

output "public_ip" {
  value = aws_instance.dev-server.public_ip
}

output "ubuntu_ami_id" {
  value = data.aws_ami.ubuntu.id
}