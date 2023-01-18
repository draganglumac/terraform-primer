resource "aws_instance" "hello_world" {
  ami           = data.aws_ami.ubuntu_free_tier.id
  instance_type = "t3.micro"

  tags = {
    Name = var.instance_name
    Environment = var.environment_name
  }
}
