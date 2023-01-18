locals {
  base_name = "HelloWorld"
  name = var.environment_name == null ? local.base_name : join("-", [local.base_name, var.environment_name])
}

resource "aws_instance" "hello_world" {
  ami           = data.aws_ami.ubuntu_free_tier.id
  instance_type = "t3.micro"

  tags = {
    Name = local.name
    Environment = var.environment_name
  }
}
