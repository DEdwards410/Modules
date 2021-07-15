
output "Sonar_IP_Public" {
  value       = aws_instance.Sonar_instance.public_ip
}

output "Sonar_IP_Private" {
  value       = aws_instance.Sonar_instance.private_ip
}
