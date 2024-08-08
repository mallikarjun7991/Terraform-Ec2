provider "aws" {
  region     = "ap-south-1"
  access_key = "**********"
  secret_key = "*************"
}

locals {
  instance_name = "${terraform.workspace}-instance"
}

resource "aws_instance" "web" {
  ami           = "ami-0af02cff5770726ce"
  instance_type = var.instance_type
  
  tags = {
    Name = local.instance_name
  }
}