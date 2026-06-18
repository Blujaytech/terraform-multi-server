output "instance_ids" {
  description = "IDs of all created instances"
  value       = aws_instance.web[*].id
}

output "instance_public_ips" {
  description = "Public IPs of all created instances"
  value       = aws_instance.web[*].public_ip
}

output "instance_names" {
  description = "Names of all created instances"
  value       = [for i in range(var.instance_count) : "${var.project_name}-${var.environment}-${i + 1}"]
}
