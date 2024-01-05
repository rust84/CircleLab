resource "random_uuid" "randomid" {}

resource "aws_s3_bucket" "app" {
  tags = {
    Name = "App Bucket"
  }

  bucket        = "${var.app}.${var.label}.${random_uuid.randomid.result}"
  force_destroy = true
}

resource "aws_s3_bucket_ownership_controls" "control" {
  bucket = aws_s3_bucket.app.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "bucket" {
  bucket = aws_s3_bucket.app.id
  acl    = "private"
}
