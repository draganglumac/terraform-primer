module "hello_world" {
  source = "./modules/hello"

  environment_name = var.environment_name
}
