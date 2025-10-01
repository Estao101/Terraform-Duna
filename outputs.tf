
output "public_instance_ip" {
  value = module.ec2.public_ip # ✅ uses ec2 module output
}

output "security_group_id" {
  value = module.security_group.sg_id # ✅ unchanged
}


output "public_subnet_id" {
  value = module.subnet.public_subnet_id
}


output "public_instance_id" {
  value = module.ec2.instance_id # ✅ uses ec2 module output
}

output "vpc_id" {
  value = module.vpc.vpc_id # ✅ uses vpc module output
}
