provider "aws" {
    region = var.region
  
}

resource "aws_s3_bucket" "sample_bucket" {
    bucket = var.bucket
  
}

resource "aws_security_group" "sample_asg" {
    name_prefix = "sample_sg"
    description = "Allow SSH and HTTP"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}

resource "aws_instance" "sample_instance" {
    ami = "053b0d53c279acc90"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.sample_asg]
  
}

output "instance_id" {
    value = aws_instance.sample_instance.id 
  
}

output "bucket_name" {
    value = aws_s3_bucket.sample_bucket.bucket
  
}