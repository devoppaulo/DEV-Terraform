resource "aws_instance" "manual" {
    ami = "ami-011996ff98de391d1"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-044f9ee33781de189"]
    key_name = "DevOps21"
    subnet_id = "subnet-2a7ae34c"

  tags = {
      Name = "manual"
  }
  
}


resource "aws_s3_bucket" "import" {
  bucket = "devops21-winterclass-backup"
  acl    = "private"
  provider = aws.ohio
}
