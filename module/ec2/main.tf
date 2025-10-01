# EC2 Instance in Public Subnet
resource "aws_instance" "public_ec2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }
}

output "public_ip" {
  value = aws_instance.public_ec2.public_ip
}

output "instance_id" {
  value = aws_instance.public_ec2.id
}
