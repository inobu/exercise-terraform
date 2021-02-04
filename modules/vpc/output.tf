output aws_subnet_private_0 {
  value = aws_subnet.private_0
}

output "aws_subnet_private_1" {
  value = aws_subnet.private_1
}

output "aws_subnet_public_0" {
  value = aws_subnet.public_0
}

output "aws_subnet_public_1" {
  value = aws_subnet.public_1
}

output "cidr_block" {
  value = aws_vpc.example_vpc.cidr_block
}