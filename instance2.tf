# terraform {
#   required_providers {
    
#   }
# }

# provider "aws" {
#     region = "ap-southeast-1"
#     shared_config_files = [ "/root/.aws/config" ]
#     shared_credentials_files = [ "/root/.aws/credentials"]
  
# }

# resource "aws_instance" "vrushabh" {
#     ami = "ami-09b1e8fc6368b8a3a"
#     instance_type = "t2.micro"
#     key_name = "tier"
#     tags = {
#     Name        = "instance1"
#     Environment = "Production"
#     Owner       = "vrushabh"
#       }
  
# }