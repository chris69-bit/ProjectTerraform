terraform {
  backend "s3" {
    bucket = var.bucket
    key    = "${var.environment}/terraform.tfstate"
    region = var.region
  }
}