module "ec2_private" {
  depends_on = [
    module.vpc
  ]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.1.4"

  name = "${var.environment}-PrivateVM"
  ami = data.aws_ami.aws_ec2_ami.id
  instance_type = var.instance_type
  key_name = var.key_pair
  # monitoring = true
  count = length(var.vpc_private_subnets)              
  subnet_id = element(module.vpc.private_subnets, count.index)
  vpc_security_group_ids = [module.private_sg.security_group_id]
  user_data = file("${path.module}/app1-install.sh")
  tags = local.common_tags
}