resource "aws_instance" "sensitive" {
    ami = "ami-087c17d1fe0178315"
    instance_type = "t2.micro"

    tags = {
        Name = "terraform-cloud"
    }
}
