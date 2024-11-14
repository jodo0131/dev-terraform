resource "aws_instance" "dev-server" {
  ami           = "ami-005fc0f236362e99f"
  instance_type = var.instance_type

  subnet_id = data.aws_subnets.default.ids[0]

  tags = {
    Name = "Dev"
  }
}