resource "aws_instance" "dev-server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  subnet_id = data.aws_subnets.default.ids[0]

  security_groups = [data.aws_security_group.default.name]

  tags = {
    Name = "Dev"
  }
}