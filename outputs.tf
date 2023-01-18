output "instance_id" {
  value = aws_instance.hello_world.id
}

output "instance_name" {
  value = local.name
}

output "ami_id" {
  value = data.aws_ami.ubuntu_free_tier.id
}
