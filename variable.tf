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
variable "instance_type_mumbai" {
  description = "The Amazon Machine Image ID for the instance"
  default = "t3.micro"
}

variable "instance_type" {
  description = "The EC2 instance type to deploy"
  type        = string
}

variable "ami_id" {
  description = "The Amazon Machine Image ID for the instance"
  type        = string
}

variable "db_password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true # Hides the value from CLI outputs
}
