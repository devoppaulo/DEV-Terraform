resource "aws_instance" "ec2-2" {
  ami           = "ami-0341aeea105412b57"
  instance_type = local.instance_type
  tags          = local.common_tags
}

resource "aws_ebs_volume" "ebs" {
  availability_zone = local.az
  size              = 8
  tags              = local.common_tags
}

locals {
  common_tags = {
    "Owner"   = "Paulo"
    "Service" = "backend"
  }
  instance_type = "t2.micro"

  az = "us-west-2a"
}
