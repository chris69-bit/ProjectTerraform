provider "aws" {
    region = var.region
  
}

resource "aws_s3_bucket" "my_sample_bucket" {
    bucket = var.bucket
  
}

resource "aws_security_group" "my_sample_sg" {
    name_prefix = "${var.environment}-sample-sg"
    description = "Allow SSH and HTTP connection"

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

resource "aws_instance" "my_sample_instance" {
    ami = "ami-053b0d53c279acc90"
    instance_type = var.instance_type
    security_groups = [aws_security_group.my_sample_sg]
  
}