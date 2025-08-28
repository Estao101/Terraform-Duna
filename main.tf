provider "aws" {
  region = "us-east-1"
}

# EC2 Instance
resource "aws_instance" "Terraform-Duna" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t2.small"
  key_name      = "terra-key"

  tags = {
    Name = "Terraform-Duna1"
  }
}

# Generate a random suffix for the bucket
resource "random_id" "bucket_suffix" {
  byte_length = 7
}

# S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.bucket_prefix_1}-${random_id.bucket_suffix.hex}"

  tags = {
    Name        = "${var.bucket_prefix_1}-${random_id.bucket_suffix.hex}"
    Environment = "Dev"
  }
}

# Variable for bucket prefix
variable "bucket_prefix_1" {
  description = "Prefix for the S3 bucket name"
  type        = string
  default     = "duna-bucket"
}