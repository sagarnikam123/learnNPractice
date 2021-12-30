terraform {
  cloud {
    organization = "sagarnikam123"
    workspaces {
      name = "terraform-aws-store-remote-state"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~>3.27"
    }
  }
  required_version = ">=0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  #ami           = "ami-830c94e3" # ubuntu-precise-12.04
  ami           = "ami-08d70e59c07c61a3a" # ubuntu-xenial-16.04-amd64-server-20200814
  instance_type = "t2.micro"
  tags = {
    #Name = "ExampleAppServerInstance"
    Name = var.instance_name
  }
}