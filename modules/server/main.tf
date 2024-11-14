resource "aws_instance" "dev-server" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = var.instance_type

  subnet_id = data.aws_subnets.default.ids[0]

  tags = {
    Name = "Dev"
  }
}