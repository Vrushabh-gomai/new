# terraform {
#     required_providers {
    
#     }
#   }

#   provider "aws" {
#       region = "ap-southeast-1"
#       shared_config_files = [ "/root/.aws/config" ]
#       shared_credentials_files = [ "/root/.aws/credentials"]
#   }

#   resource  "aws_instance" "my_instance-3"{
#     ami = var.ami
#     instance_type = var.instance_type
#     key_name = var.key_name
#     vpc_security_group_ids = ["sg-08f05f3e41bd6a735"] 
#     tags = var.tags
#   }
#   variable "region" {
#   type = string
#   description = " region for my script"
#   default = "ap-southeast-1"
# }
# variable "ami" {
#   type = string
#   description = " ami for my project"
#   default = "ami-09b1e8fc6368b8a3a"
# }
# variable "instance_type" {
#   type = string
#   description = " server size"
#   default = "t2.micro"
# }
# variable "key_name" {
#   type = string
#   description = " key-pair of my server"
#   default = "key"
# }
# variable "tags" {
#   type = map
#   description = " tags to my server"
#   default = {
#     Name = "variable-server"
#     Enviorment = "production"
#     Project = "kit-kat Project"
#   }
# }