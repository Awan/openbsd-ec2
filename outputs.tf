output "ec2pubip" {
  value = aws_instance.openbsd.public_ip
}
