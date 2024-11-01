variable "region" {
    description = "This the region to deploy our resource"
    default = "us-east-1"
  
}

variable "bucket" {
    default = "Kick-buckets-543"
    description = "This the bucket for the resource storage"
  
}

variable "environment" {
    default = "production"
    description = "This is the deployment environment"
  
}

variable "instance_type" {
    default = "t2.micro"
  
}