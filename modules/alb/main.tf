resource "aws_alb" "example_alb" {
  name                       = "example"
  load_balancer_type         = "application"
  internal                   = false
  idle_timeout               = 60
  enable_deletion_protection = true

  subnets = [
    module.vpc.aws_subnet_public_0.vpc_id,
    module.vpc.aws_subnet_public_0.vpc_id
  ]

  access_logs {
    bucket = ""
  }

  security_groups = []
}

resource "aws_lb_listener" "example_listener" {
  load_balancer_arn = aws_alb.example_alb.arn
  port              = 80
  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "これは『HTTP』です"
      status_code  = "200"
    }
  }
}

resource "aws_lb_target_group" "example_group" {
  name        = "example"
  target_type = "ip"
  vpc_id      = ""
  port        = 80
  protocol    = "HTTP"

  health_check {
    path                = "/"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    interval            = 30
    matcher             = 200
    port                = "traffic-port"
    protocol            = "HTTP"
  }
}

