variable "instance-name" {
  type = string
  default = "HelloWorld"
}

variable "environment-name" {
  type = string
  nullable = true
  default = null
}
