# AWS EC2 Instance Terraform Variables
# EC2 Instance Variables

# AWS EC2 Instance Type
variable "instance_type" {
  description = "Ec2 instance type"
  type = string
  default = "t2.micro"
}

# AWS EC2 KEY PAIR
variable "key_pair" {
  description = "Ec2 key pair"
  type = string
  default = "terraform-key"
}

# aws count of private EC2 instances
variable "private_instance_count" {
  description = "Number of private ec2 instances"
  type = number
  default = 2
}