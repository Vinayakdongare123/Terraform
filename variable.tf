variable "aws_region" {
  default = "us-east-1"
}
variable "ami_id" {
  description = "The Amazon Machine Image ID for the instance"
  default = "us-east-1"
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
  default = "Security group id"
}
variable "rg" {
  description = "The EC2 Region type to deploy"
  default = "Region"
}
variable "az" {
  description = "Availability Zone"
  default = "Availabilty Zone"
}
