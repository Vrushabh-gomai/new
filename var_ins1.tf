terraform {
  required_providers {

  }
}

provider "aws" {
    region = "ap-southeast-1"
    shared_config_files = [ "/root/.aws/config" ]
    shared_credentials_files = [ "/root/.aws/credentials"]
    profile                  = var.profile

}

resource "aws_instance" "my_instance_2" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name

  tags = var.tags
}

variable "profile" {
  default = "Vrushabh"
  type = string
  description = "here i am providing the profile for my server"
}

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

variable "key_name" {
  type = string
  description = "here we are providing the key-pair of my server"
  default = "tier"
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


output "Server_created" {
  value = "Yes created"
}

