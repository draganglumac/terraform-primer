locals {
  name = var.environment-name == null ? var.instance-name : join("-", [var.instance-name, var.environment-name])
}

resource "aws_instance" "hello-world" {
  ami           = data.aws_ami.ubuntu-free-tier.id
  instance_type = "t3.micro"

  tags = {
    Name = local.name
    Environment = var.environment-name
  }
}
