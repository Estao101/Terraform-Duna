variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}


variable "vpc_cidr" {
  description = "CIDR BLOCK FOR THE MAINVPC"
  type        = string
  default     = "192.168.10.0/24"
}




variable "public_subnet_cidr" {
  description = "CIDR BLOCK FOR PUBLIC SUBNET"
  type        = string
  default     = "192.168.10.0/28"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}
variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}
