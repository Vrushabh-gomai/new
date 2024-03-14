terraform {
   required_providers {
    
   }
 }

 provider "aws" {
     region = "ap-southeast-1"
     shared_config_files = [ "/root/.aws/config" ]
     shared_credentials_files = [ "/root/.aws/credentials"]
  
}


resource "aws_s3_bucket" "new" {
  bucket = "my-bucket"

  tags = {
    Name        = "My_bucket"
    Environment = "Dev"
  }
}