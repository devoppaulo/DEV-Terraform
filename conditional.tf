variable "env" {
    
}

resource "aws-instance" "dev" {
  ami           = "ami-0341aeea105412b57"
  instance_type = "t2.micro"
  count         = var.env == true ? 3 : 0

}

resource "aws-instance" "prod" {
  ami           = "ami-0341aeea105412b57"
  instance_type = "t2.micro"
  count         = var.env == false ? 1 : 0

}
