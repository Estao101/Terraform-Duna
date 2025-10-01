provider "aws" {
  region = var.aws_region
}

# Fetch the current AWS region (optional, useful for outputs/debugging)
data "aws_region" "current" {}

# Fetch the latest Ubuntu 22.04 LTS AMI (HVM, SSD) from Canonical
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical's AWS account ID

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# VPC
module "vpc" {
  source     = "./module/vpc"
  cidr_block = var.vpc_cidr
}


# Public Subnet  
module "subnet" {
  source             = "./module/subnet"
  vpc_id             = module.vpc.vpc_id
  public_subnet_cidr = var.public_subnet_cidr
}


# Security Group for SSH
module "security_group" {
  source = "./module/security_group"
  vpc_id = module.vpc.vpc_id
}

# EC2 Instance in Public Subnet
module "ec2" {
  source        = "./module/ec2"
  ami_id        = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = module.subnet.public_subnet_id
  key_name      = var.key_name
  sg_id         = module.security_group.sg_id
  instance_name = var.instance_name
}



