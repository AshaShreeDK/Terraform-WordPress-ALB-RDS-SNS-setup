variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.10.10.0/24"
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.10.10.0/28"
}

variable "jump_subnet_cidr" {
  type    = string
  default = "10.10.10.16/28"
}

variable "private_subnet1_cidr" {
  type    = string
  default = "10.10.10.32/28"
}

variable "private_subnet2_cidr" {
  type    = string
  default = "10.10.10.48/28"
}

variable "primary_availability_zone1" {
  type    = string
  default = "us-east-1a"
}

variable "primary_availability_zone2" {
  type    = string
  default = "us-east-1b"
}

variable "db_username" {
  type    = string
  default = "admin"
}

variable "db_password" {
  type    = string
  default = "admin123"
}

variable "base_ami" {
  type    = string
  default = "ami-0a9a48ce4458e384e"
}

variable "sns_email" {
  type    = string
  default = "dlrasha14@gmail.com"
}

variable "asg_desired_capacity" {
  type    = number
  default = 2
}

