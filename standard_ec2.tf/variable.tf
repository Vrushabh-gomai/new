variable "region" {
  type = string
  description = "here i am providing region for my script"
  default = "ap-southeast-1"
}

variable "ami" {
  type = string
  description = "here we are providing ami for my project"
  default = "ami-09b1e8fc6368b8a3a"
}

variable "instance_type" {
  type = string
  description = "here i am providing the server size"
  default = "t2.micro"
}


variable "instance_type" {
  type = string
  description = "here i am providing the server size"
  default = "t2.micro"
}

variable "key_name" {
  type = string
  description = "here we are providing the key-pair of my server"
  default = "key"
}

variable "tags" {
  type = map
  description = "here i am providing the tags to my server"
  default = {
    Name = "variable-server"
    Enviorment = "production"
    Project = "XYX Project"
  }
}