resource "aws_internet_gateway" "app-igw" {
    vpc_id = aws_vpc.app_vpc.id
    tags = {
        Name = "app-igw"
  }
}

resource "aws_eip" "app_eip" {
    domain = "vpc"    
    tags = {
        Name = "app_eip"
  }
}

resource "aws_nat_gateway" "app_nat" {
    allocation_id = aws_eip.app_eip.id
    subnet_id     = aws_subnet.public_sub_1.id
    tags = {
        Name = "app-nat"
  }
}