provider "aws" {
    alias = "mmmm"
    region = "ap-southeast-1"
    # shared_config_files = [ "/root/.aws/config" ]
    # shared_credentials_files = [ "/root/.aws/credentials"]
}
    terraform {
      backend "s3" {
    bucket         = "terrabucket1.1"
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    encrypt        = true
    dynamodb_table = "terraform_b20"
        
      }
    }
resource "aws_instance" "my_instance_5" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = var.tags
}