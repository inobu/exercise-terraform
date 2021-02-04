output aws_subnet_private_0 {
  value = aws_subnet.private_0
}

output "aws_subnet_private_1" {
  value = aws_subnet.private_1
}

output "cidr_block" {
  value = aws_vpc.example_vpc.cidr_block
}