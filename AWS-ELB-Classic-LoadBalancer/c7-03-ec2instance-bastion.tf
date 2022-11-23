module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.1.4"

  name = "${var.environment}-BastionHost"
  # instance_count = 5
  ami = data.aws_ami.aws_ec2_ami.id
  key_name = var.key_pair
  # monitoring = true
  subnet_id = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]
  tags = local.common_tags
}