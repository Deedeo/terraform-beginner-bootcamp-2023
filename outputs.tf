# This cretae a block output for the s3 bucket
output "bucket_name" {
  value = aws_s3_bucket.website_bucket.bucket
}