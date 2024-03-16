variable "region" {
  type = string
 
}

variable "ami" {
  type = string
  
}


variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
 
}

variable "tags" {
  type = map
  # description = "here i am providing the tags to my server"
  default = {
    Name = "variable-server"
    # Enviorment = "production"
    # Project = "XYX Project"
  }
}