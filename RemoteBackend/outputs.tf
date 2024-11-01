output "Public-ip-address" {
  description = "The public ip address"
  value = aws_instance.ericksterra.public_ip
}
