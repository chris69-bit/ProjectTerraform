output "instance_id" {
    value = aws_instance.my_sample_instance.id
  
}

output "bucket_name" {
    value = aws_s3_bucket.my_sample_bucket.bucket
  
}