provider "aws" {
  region = "us-west-2"
}
terraform {
  backend "s3" {
    bucket = "terraformbd123"
    region = "us-west-2"
    key = "terraform bucket"
  }
}
resource "aws_instance" "myinstance" {
  ami = "ami-0fdcaf433b661372d"
  instance_type = "t3.micro"
  key-name = "id_rsa"
  vpc_security_group_ids = ["sg-079f59ab5da82babc"]
  tags = {
    Name = "learn-terraform"
  }
}

 

