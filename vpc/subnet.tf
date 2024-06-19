resource "aws_subnet" "public_sub_1" {
    vpc_id     = aws_vpc.app_vpc.id
    cidr_block = "10.10.0.0/22"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true             #Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false.
    tags = {
        Name = "public_sub_1"
  }
}

resource "aws_subnet" "private_sub_1" {
    vpc_id     = aws_vpc.app_vpc.id
    cidr_block = "10.10.4.0/22"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = false 
    tags = {
        Name = "private_sub_1"
  }           
}

resource "aws_subnet" "public_sub_2" {
    vpc_id     = aws_vpc.app_vpc.id
    cidr_block = "10.10.8.0/22"
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = true 
    tags = {
        Name = "public_sub_2"
  }                 
}

resource "aws_subnet" "private_sub_2" {
    vpc_id     = aws_vpc.app_vpc.id
    cidr_block = "10.10.12.0/22"
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = false   
    tags = {
        Name = "private_sub_2"
  }                
}