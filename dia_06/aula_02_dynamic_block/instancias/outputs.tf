output "public_ip" {
  description = "IP público da instância"
  value       = { for instance in aws_instance.this : instance.tags["Name"] => instance.public_ip }
}