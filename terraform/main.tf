provider "aws" {
  region     = "us-east-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

resource "aws_s3_bucket" "b" {
  bucket = "s3-website.shaunt.com"
  acl    = "public-read"
  //policy = file("policy.json")

  website {
    index_document = "public/index.html"
  }

    cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST","GET"]
    allowed_origins = ["https://s3-website.shaunt.com"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
}