provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  count = 3
  ami = "ami-01bd9d8f06d29d6a0"
  instance_type = "t2.micro"
  key_name = "venu-terraform"
  tags = {
    Name = "venu-terraform-${count.index+1}"
  }
}