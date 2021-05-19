provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = ["sg-0bd84ce188324d46e"]
  subnet_id       = "subnet-012194dc5908844e1"
  associate_public_ip_address = true
  tags = {
    Name = "aakulov-kitchen-test"
  }
}
