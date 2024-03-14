terraform {
   required_providers {
    
   }
 }

resource "aws_vpc" "vpc_v" {
  cidr_block       = "10.1.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc_my"
  }
}