module "vpc" {
  source = "../vpc"
}

module "security_group" {
  source = "../security_group"
  name = "example"
  vpc_id = module.vpc.aws_vpc_id
  port = 80
  cidr_blocks = ["0.0.0.0/0"]
}