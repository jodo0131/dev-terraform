resource "aws_instance" "dev-server" {
  ami           = "ami-0767046d1677be5a0"
  instance_type = var.instance_type

  subnet_id = data.aws_subnets.default.ids[0]

  security_groups = [data.aws_security_group.default.name]

  tags = {
    Name = "Dev"
  }
}