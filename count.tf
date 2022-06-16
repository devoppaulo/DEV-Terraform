resource "aws_instance" "ec2" {
  ami           = "ami-0341aeea105412b57"
  instance_type = "t2.micro"
  count         = 1
}
resource "aws_iam_user" "my_user" {
  name  = var.users[count.index]
  path  = "/system/"
  count = 5
}

variable "users" {
  type    = list(any)
  default = ["user1", "user2", "user3", "user4", "user5"]

}
