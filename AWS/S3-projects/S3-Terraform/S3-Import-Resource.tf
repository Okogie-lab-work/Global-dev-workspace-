provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "global-s3-project-okogie"
}

public_access_block_configuration {
    block_public_acls   = false
    block_public_policy = false
  }

resource "aws_s3_bucket_object" "object1" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "Cloud-Engineer-Jobs_Blog-2048x1158.jpeg"
}

resource "aws_s3_bucket_object" "object2" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "OIP (1).jpeg"
}

resource "aws_s3_bucket_object" "object3" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "Staticweb.html"
}
