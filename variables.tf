variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "Terraform-Duna1"
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0360c520857e3138f"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.small"
}

variable "key_name" {
  description = "Key pair name to use for the instance"
  type        = string
  default     = "terra-key"
}
variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name"
  type        = string
}
