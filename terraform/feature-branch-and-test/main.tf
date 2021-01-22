terraform {
	required_providers {
		aws	= {
			source	= "hashicorp/aws"
			version	= "~> 3.0"
		}
	}
}

provider "aws" {
	region	= "us-east-1"
	profile	= "r2g"
}

resource "aws_s3_bucket" "site_bucket" {
  bucket = var.bucket_name
  acl    = "public-read"
#  policy = file("policy.json")
	force_destroy	= true
  website {
    index_document = "index.html"
    error_document = "error.html"

  }
}

output "website_address" {
	value	= aws_s3_bucket.site_bucket.website_endpoint
}
