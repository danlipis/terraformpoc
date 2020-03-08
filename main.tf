provider "aws" {
    region = "us_east-1"
    access_key = "AKIAZ3B5HSP3TFJYQ6UV"
    secrety_key = "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"
    version = "~> 2.0"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-07ebfd5b3428b6f4d"
    instance_type = "t2.micro"
    key_name = "terraform"
    tags = {
        Name = "dev${count.index}"
    }
}