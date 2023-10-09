# This cretae a block output for the s3 bucket
output "random_bucket_name" {
  value = random_string.bucket_name.result
}