provider "aws" {
    version = "~> 2.0"
    region  = "us-east-1"  
}

resource "aws_instance" "dev" {
    ami = "ami-08bc77a2c7eb2b1da"
    instance_type = "t2.micro"
    key_name = 
  
}
