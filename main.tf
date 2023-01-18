locals {
  name = var.environment_name == null ? var.instance_name : join("-", [var.instance_name, var.environment_name])
}

resource "aws_instance" "hello_world" {
  ami           = data.aws_ami.ubuntu_free_tier.id
  instance_type = "t3.micro"

  tags = {
    Name = local.name
    Environment = var.environment_name
  }
}
