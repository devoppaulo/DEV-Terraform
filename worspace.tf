resource "aws_instance" "my-ec2" {
  ami           = "ami-011996ff98de391d1"
  instance_type = lookup(var.instance_type, terraform.workspace)
  tags = {
    Name  = "myec2-1"
    Owner = "paulo"
  }
}

variable "instance_type" {
    type = map
    default = {
        dev = "t2.nano"
        prod = "t2.large"
        test = "t2.small"
        default = "t2.micro"
    }
}
