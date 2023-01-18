data "aws_ami" "ubuntu_free_tier" {
  most_recent = true
  name_regex  = "^ubuntu\\/images\\/hvm-ssd\\/ubuntu-jammy-22.04-amd64-server-[0-9]*$"
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
