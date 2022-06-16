terraform {
  backend "s3" {
    bucket  = "paulo.s3"
    region  = "us-west-2"
    profile = "prod"
    key = "terraform.tfstate"
  }
