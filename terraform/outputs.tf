output "instance_ip" {
  description = "Public IP address of the created EC2 instance"
  value       = aws_instance.app_server.public_ip
}