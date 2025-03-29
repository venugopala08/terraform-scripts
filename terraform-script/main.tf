// main.tf

resource "aws_vpc" "venu_vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = var.tenancy
  
  tags = {
    Name = "venu-vpc"
  }
}

resource "aws_subnet" "venu_subnet" {
  vpc_id                  = aws_vpc.venu_vpc.id
  cidr_block              = var.subnet_cidr
  availability_zone       = var.availability_zone

  tags = {
    Name = "venu-subnet"
  }
}