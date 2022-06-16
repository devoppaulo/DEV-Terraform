terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.70.0,<=3.73.0"
    }
  }
}

provider "aws" {
  region  = var.region
  profile = "dev"
}
