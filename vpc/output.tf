output "vpc_id" {
  value = aws_vpc.app_vpc.id
}

output "subnet_public1_id" {
  value = aws_subnet.public_sub_1.id
}

output "subnet_public2_id" {
  value = aws_subnet.public_sub_2.id
}

output "subnet_private1_id" {
  value = aws_subnet.private_sub_1.id
}

output "subnet_private2_id" {
  value = aws_subnet.private_sub_2.id
}
