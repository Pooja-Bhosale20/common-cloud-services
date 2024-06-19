resource "aws_vpc" "app_vpc" {
  cidr_block = "10.10.0.0/20"
  tags = {
    Name = "app_vpc"
  }
}
