# Create S3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = var.bucket_tags
}