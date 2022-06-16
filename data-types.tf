resource "aws_instance" "test-ec2" {
  ami           = var.my_ami
  instance_type = var.instance
}

variable "instance" {
  type    = list
  default = ["t2.micro", "t2.large", "t2.nano", "t2.small", "t2.xlarge"]
}

variable "instance_type" {
  type = map
  default = {
    us-west-1 = "t2.micro"
    us-west-2 = "t2.small"
    us-east-1 = "t2.nano"
    us-west-2 = "t2.large"
  }

}

variable "ami" {
  type = map
  default = {
    us-west-2 = "ami-06cffe063efe892ad"
    us-west-1 = "ami-01163e76c844a2129"
    us-east-2 = "ami-0231217be14a6f3ba"
    us-east-1 = "ami-0a8b4cd432b1c3063"
  }
}

variable "my_ami" {
  
}
