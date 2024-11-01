terraform {
  backend "s3" {
    bucket = "erics-terraform-project"
    key = "erics/terraform.tfstate"
    region = "us-east-1"
  }
}