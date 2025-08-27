provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Terraform-Duna" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t2.small"
  key_name      = "terra-key"

  tags = {
    Name = "Terraform-Duna"
  }
}

