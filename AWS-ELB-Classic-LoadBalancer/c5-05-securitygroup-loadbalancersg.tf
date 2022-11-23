module "loadbalancer_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.16.0"

  name = "loadbalancer-sg"
  description = "Security Group with HTTP open for entire intenet (IPv4 CIDR), egress ports are all world open"
  vpc_id = module.vpc.vpc_id
  # Ingress Rules & CIDR Blocks
  ingress_rules = ["http-80-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
   # Egress Rule - all-all open
   egress_rules = ["all-all"]
   tags = local.common_tags

   # Open to CIDRs blocks (rule or from_port+to_port+protocol+description)
   ingress_with_cidr_blocks = [
    {
      from_port   = 81
      to_port     = 81
      protocol    = 6
      description = "Allow Port 81 from internet"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
  
}