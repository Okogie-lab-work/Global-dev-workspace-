provider "aws" {
  region = "eu-west-2"
}

terraform {
  required_version = ">= 0.13"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "global-s3-project-okogie"
}

resource "aws_s3_object" "object1" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "Cloud-Engineer-Jobs_Blog-2048x1158.jpeg"
}

resource "aws_s3_object" "object2" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "OIP (1).jpeg"
}

resource "aws_s3_object" "object3" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "Staticweb.html"
}
