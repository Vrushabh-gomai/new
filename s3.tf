resource "aws_s3_bucket" "new" {
  bucket = "my-bucket"

  tags = {
    Name        = "My_bucket"
    Environment = "Dev"
  }
}