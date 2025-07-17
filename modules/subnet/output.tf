output "public_subnet_id" {
  value = aws_subnet.public[*].id
  description = "Values of public subnet ids"
}

output "private_subnet_id" {
  value = aws_subnet.private[*].id
  description = "Values of public subnet ids"
}