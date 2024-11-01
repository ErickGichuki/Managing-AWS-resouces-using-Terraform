provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2"
  ami_value = "ami-06b21ccaeff8cd686"
  instance_type_value = "t2.micro"
}