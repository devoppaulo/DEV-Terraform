module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.1.0"
  instance_type ="t2.micro"
  ami = "ami-011996ff98de391d1"
  key_name = "DevOps21"
  subnet_id = "subnet-0d3f9940a232c9bec"
 tags = {
      Name = "hashicorp-test"
      Owner = "Paulo"
  }
}
