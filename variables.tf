# Input variable for AMI
variable "ami_value" {
    description = "EC2 ami"
    type = string
}

# Input variable for the type of instance
variable "instance_type_value" {
    description = "EC2 instance type"
    type = string
}