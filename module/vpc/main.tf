resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = "main_vpc"
  }
}

output "vpc_id" {
  value = aws_vpc.main.id
}

