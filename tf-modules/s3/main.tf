provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "codegroup_s3_bucket" {
  bucket = var.s3_name
}

resource "aws_s3_bucket_ownership_controls" "codegroup_s3_ownership_controls" {
  bucket = aws_s3_bucket.s3_bucket.id
  rule {
    object_ownership = var.object_ownership
  }
}

resource "aws_s3_bucket_acl" "codegroup_s3_bucket_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.s3_ownership_controls]

  bucket = aws_s3_bucket.s3_bucket.id
  acl    = var.acl_kind
}

resource "aws_s3_bucket_versioning" "codegroup_s3_bucket_versioning" {
  bucket = aws_s3_bucket.s3_bucket.id
  versioning_configuration {
    status = var.versioning_configuration
  }
}