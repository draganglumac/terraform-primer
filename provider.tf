terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "terraform-${insert-account-id-here}-remote-20230126"
    key    = "hello-world/terraform.tfstate"
    region = "eu-west-2"
    dynamodb_table = "terraform-locks"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}
