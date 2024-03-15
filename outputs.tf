# terraform output block

output "greeting" {
  description = "Print greeting message"
  value       = "Hello, world!"
}

output "vpc_id" {
  description = "Outputs vpc id"
  value       = aws_vpc.vpc.id
}

output "public_url" {
  description = "Public url for web_server"
  value       = "http://${aws_instance.ubuntu_server.public_ip}:8080/index.html"
}

output "vpc_information" {
  description = "VPC information for environment"
  value       = "Your ${terraform.workspace} VPC has an ID of ${aws_vpc.vpc.id}"
}