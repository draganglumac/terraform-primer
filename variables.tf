variable "instance_name" {
  type = string
  default = "HelloWorld"
}

variable "environment_name" {
  type = string
  nullable = true
  default = null
}
