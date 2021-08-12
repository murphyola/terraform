provider "aws" {
	region = "us-east-2"
	profile = "terraform_course2"
}

resource "aws_s3_bucket" "mybuckett" {
  bucket = "mybuckett1011"
  acl    = "private"


  tags = {
    Environment = "Dev"
  }

  }

  resource "aws_s3_bucket_object" "object" {
  bucket = "aws_s3_bucket.mybuckett.id"
  key    = "sample.txt"
  source = "/Users/maruf/Downloads/terra/sample/text.txt"
  etag = filemd5("/Users/maruf/Downloads/terra/sample/text.txt")
}
