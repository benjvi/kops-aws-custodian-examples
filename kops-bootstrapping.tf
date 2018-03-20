variable "kops_bucket_name" {
  type = "string"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "kops_state" {
  bucket = "${var.kops_bucket_name}"
  acl    = "private"
}

