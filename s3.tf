resource "aws_s3_bucket" "s3-bucket-1" {
  bucket = var.bucket_name
  acl    = "private"
