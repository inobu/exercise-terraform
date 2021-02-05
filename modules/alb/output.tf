output "alb_group" {
  value = aws_lb_target_group.example_group
}

output "alb_listener" {
  value = aws_alb_listener.example_listener
}

output "alb" {
  value = aws_alb.example_alb
}