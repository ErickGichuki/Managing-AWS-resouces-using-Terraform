# Output variable for public ip address
output "public-ip-address" {
    description = "Public ip address of the EC2 instance"
    value = aws_instance.my_instance.public_ip
}