variable "protocol" {
  type = string

}

variable "cidr" {
  default = "192.168.1.1/32"

}

variable "instance_type" {
  default = "t2.micro"

}

variable "bucket_name" {

}

variable "elb_name" {
    type = string
  
}

variable "az" {
    type = list
  
}

variable "connection_draining" {
    type = bool
  
}
