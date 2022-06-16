resource "aws_key_pair" "pro-key" {
  key_name   = "devops22-tf-key-1"
  public_key = file("${path.module}/my_public_key.txt")
}


resource "aws_instance" "remote-ec2" {
  ami                    = data.aws_ami.amazon.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.pro-key.id
  vpc_security_group_ids = [aws_security_group.my-sg.id]

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install httpd -y",
      "sudo cd /var/www/html",
      "sudo wget https://devops14-mini-project.s3.amazonaws.com/default/index-default.html",
      "sudo wget https://devops14-mini-project.s3.amazonaws.com/default/mycar.jpeg",
      "sudo mv index-default.html index.html",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd --now"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("./private_key.pem")
      host        = self.public_ip
    }
  }
}

resource "aws_security_group" "my-sg" {
  name = "remote-ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
