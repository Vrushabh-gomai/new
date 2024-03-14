terraform {
   required_providers {
    
   }
 }
provider "aws" {
      region = "ap-southeast-1"
      shared_config_files = [ "/root/.aws/config" ]
      shared_credentials_files = [ "/root/.aws/credentials"]
  
 }
resource "aws_vpc" "vpc_v" {
  cidr_block       = "10.1.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc_my"
  }
}