terraform {
  backend "s3" {
    bucket         = "devops21-winterclass"
    region         = "us-west-1"
    profile        = "dev"
    key            = "terraform.tfstate"
    dynamodb_table = "devops21-lock-table"
  }
}
