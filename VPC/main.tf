provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "custom-vpc"
    name = "vinayak"
  }
}
# 3. Create a Public Subnet
resource "aws_subnet" "public-sub" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
  Name = "public-sub"
  name = "vinayak"
  }
}
# 4. Create a Private Subnet
resource "aws_subnet" "private-sub" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
  Name = "private-sub"
  name = "vinayak"
  }
}

# 2. Create an Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "main-igw"
  }
}
  
# 4. Create a Public Route Table
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "public-route-table"
  }
}

# 5. Associate Route Table to Public Subnet
resource "aws_route_table_association" "attach-igw" {
  subnet_id      = aws_subnet.public-sub.id
  route_table_id = aws_route_table.public_rt.id
}
