output "wordpress_instance_public_ip" {
  value = aws_instance.wordpress_instance.public_ip
}