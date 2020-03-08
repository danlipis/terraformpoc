provider "aws" {
    version = "~> 2.0"
    region  = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-07ebfd5b3428b6f4"
    aws_instance = "t2.micro"
    key_name = "terraform"
    tags = {
        Name = "dev${count.index}"
    }
}