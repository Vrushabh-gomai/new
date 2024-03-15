 terraform {
    required_providers {
    
    }
  }

  provider "aws" {
      region = "ap-southeast-1"
      shared_config_files = [ "/root/.aws/config" ]
      shared_credentials_files = [ "/root/.aws/credentials"]
  
 }
 resource "aws_s3_bucket" "kit-kat" {
  bucket = var.bucket

  tags = var.tags
  }
  variable "region" {
    type = string
    description = "region"
    default = "ap-southeast-1"
  }



 variable "bucket" {
    type = string
    description = "bucket"
    default = "kitkat"
  }

 variable "tags" {
    type = map
    description = "region"
    default = {
        name = "kitkat"

     }
   }

