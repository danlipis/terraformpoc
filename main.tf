provider "aws" {
    region = "us-east-1"
    version = "~> 2.0"
}

resource "aws_instance" "dev" {
    ami = "ami-07ebfd5b3428b6f4d"
    instance_type = "t2.micro"
    key_name = "terraform"
    tags = {
        Name = "dev"
    }
}