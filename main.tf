# Multi Region
provider "aws" {
    alias = "us-east-1"
    region = "us-east-1"
}
provider "aws" {
    alias = "us-west-2"
    region = "us-west-2"
}

# Input variable for AMI
variable "ami_id" {
    description = "EC2 ami"
    type = string
    default = "ami-06b21ccaeff8cd686"
}

# Input variable for the type of instance
variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t2.micro"
}

# Create the aws instance resource
resource "aws_instance" "my_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    provider = aws.us-east-1

    tags = {
        Name = "EC2 via terra"
    }
}

# Output variable for public ip address
output "public_ip" {
    description = "Public ip address of the EC2 instance"
    value = aws_instance.my_instance.public_ip
}
