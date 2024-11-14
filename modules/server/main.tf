resource "aws_instance" "dev-server" {
  ami           = "ami-0325498274077fac5"
  instance_type = var.instance_type

  subnet_id = data.aws_subnets.default.ids[0]

  tags = {
    Name = "Dev"
  }
}