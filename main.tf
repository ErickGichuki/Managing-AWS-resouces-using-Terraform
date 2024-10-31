# Multi Region
provider "aws" {
    alias = "us-east-1"
    region = "us-east-1"
}
provider "aws" {
    alias = "us-west-2"
    region = "us-west-2"
}

# Create the aws instance resource
resource "aws_instance" "my_instance" {
    ami = var.ami_value
    instance_type = var.instance_type_value
    provider = aws.us-east-1

    tags = {
        Name = "EC2 via terra"
    }
}

