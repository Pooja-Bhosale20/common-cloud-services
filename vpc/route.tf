#public_sub_1_rt
resource "aws_route_table" "public_sub_1_rt" {
  vpc_id = aws_vpc.app_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.app-igw.id
  }
  tags = {
    Name = "public_sub_1_rt"
  }  
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_sub_1.id
  route_table_id = aws_route_table.public_sub_1_rt.id
}

#private_sub_1_rt
resource "aws_route_table" "private_sub_1_rt" {
  vpc_id = aws_vpc.app_vpc.id
  

  route {
    cidr_block = "0.0.0.0/0"    
    nat_gateway_id = aws_nat_gateway.app_nat.id
  }
  tags = {
    Name = "private_sub_1_rt"
  }  
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.private_sub_1.id
  route_table_id = aws_route_table.private_sub_1_rt.id
}

#public_sub_2_rt
resource "aws_route_table" "public_sub_2_rt" {
  vpc_id = aws_vpc.app_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.app-igw.id
  }
  tags = {
    Name = "public_sub_2_rt"
  }  
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.public_sub_2.id
  route_table_id = aws_route_table.public_sub_2_rt.id
}

#private_sub_2_rt
resource "aws_route_table" "private_sub_2_rt" {
  vpc_id = aws_vpc.app_vpc.id
  
  route {
    cidr_block = "0.0.0.0/0"    
    nat_gateway_id = aws_nat_gateway.app_nat.id
  }
  tags = {
    Name = "private_sub_2_rt"
  }  
}

resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.private_sub_2.id
  route_table_id = aws_route_table.private_sub_2_rt.id
}