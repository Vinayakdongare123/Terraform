variable "aws_region" {
  description = "The AWS region where resources will be deployed"
  type        = string
  default     = "us-east-1"
}
variable "ami_id" {
  description = "The Amazon Machine Image ID for the instance"
  type        = string
}
variable "key_name" {
  default = The Amazon Machine Image ID for the instance"
  type        = string
}  
variable "vpc_cidr" {
  description = "The CIDR block for the custom VPC"
  type        = string
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
