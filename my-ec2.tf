terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.70.0,<=3.73.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = "???????????????"
  secret_key = "???????????????"
}

resource "aws_instance" "my-first-ec2" {
  ami           = "ami-06cffe063efe892ad"
  instance_type = "t2.micro"
  tags = {
    Name  = "myec2-1"
    Owner = "Paulo"
  }
}

resource "aws_instance" "my-second-ec2" {
  ami           = "ami-06cffe063efe892ad"
  instance_type = "t2.micro"
  tags = {
    Name  = "myec2-2"
    Owner = "Paulo"
  }
}
