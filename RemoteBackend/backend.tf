terraform {
  backend "s3" {
    bucket = "value"
    key = "erics/terraform.tfstate"
    region = "us-east-1"
  }
}