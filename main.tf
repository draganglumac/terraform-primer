resource "aws_instance" "hello-world" {
  ami           = data.aws_ami.ubuntu-free-tier.id
  instance_type = "t3.micro"

  tags = {
    Name = var.instance-name
    Environment = var.environment-name
  }
}
