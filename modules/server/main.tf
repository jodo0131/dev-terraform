resource "aws_instance" "dev-server" {
  ami           = "var.ami.id"
  instance_type = var.instance_type

  subnet_id = data.aws_subnets.default.ids[0]

  tags = {
    Name = "Dev"
  }
}