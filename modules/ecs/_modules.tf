module "aws_vpc" {
  source = "../vpc"
}

module "alb" {
  source = "../alb"
}