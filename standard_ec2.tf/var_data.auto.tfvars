
  region        = "ap-southeast-1"
  ami           = "ami-09b1e8fc6368b8a3a"
  instance_type = "t2.micro"
  key_name      = "key"

  
  tags = {
    Name        = "variable-server"
    Environment = "Production"
    Owner       = "vrushabh"
  }


