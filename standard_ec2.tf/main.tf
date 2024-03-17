terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}


provider "aws" {
    region = var.region
    # shared_config_files = [ "/root/.aws/config" ]
    # shared_credentials_files = [ "/root/.aws/credentials"]
}
    terraform {
      backend "s3" {
    bucket         = "terrabuck1.1"
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    encrypt        = true
    dynamodb_table = "terratabble_b2"
        
      }
    }
resource "aws_instance" "my_instance_7" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = var.tags
}