variable "instance" {
  type = list
  default = ["t2.micro", "t2.large", "t2.nano",]
}

variable "instance_type" {
    type = map
    default = {
        us-east-1 = "t2.micro"
        us-east-2 = "t2.nano"
        us-west-1 = "t2.large"
    }
}

variable "ami" {
    type = map
    default = {
        us-east-1 = "ami-0c2b8ca1dad447f8a"
        us-east-2 = "ami-0443305dabd4be2bc"
        us-west-1 = "ami-04b6c97b14c54de18"
    }
}

variable "ingress_ports" {
  type    = list(any)
  default = [22, 80, 443]
}

variable "egress_ports" {
  type    = list(any)
  default = [8000, 8080, 8888]
}
