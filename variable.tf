variable "aws_region" {
  default = "us-east-1"
}
variable "ami_id" {
  description = "The Amazon Machine Image ID for the instance"
  default = "ami-0fdcaf433b661372d"
}
variable "instance_type" {
  description = "The Amazon Machine Image ID for the instance"
  default = "t3.micro"
}
variable "key_name" {
  default = The Amazon Machine Image ID for the instance"
  default = "id_rsa" 
}  
variable "mysg" {
  description = "Security Group"
  default = "sg-079f59ab5da82babc"
}
variable "region" {
  description = "The EC2 Region type to deploy"
  default = "us-east-1"
}
variable "az" {
  description = "Availability Zone"
  default = "us-east-1"
}
