#resource "aws_instance" "my-ec2" {
#    ami = "ami-011996ff98de391d1"
#    instance_type = "t2.micro"
#}

resource "aws_instance" "my-ec2" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet
}
