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
variable "sg_id" {
  description = "The name for the Security Group"
  type        = string
}
variable "subnet_id" {
  description = "Name tag for the subnet"
  type        = string
}
variable "ami_id" {
  description = "Name tag for the ami"
  type        = string
}