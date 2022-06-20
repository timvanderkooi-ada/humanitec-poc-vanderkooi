output "aws_access_key_id" {
  value     = var.credentials.access_key
  sensitive = true
}

output "aws_secret_access_key" {
  value     = var.credentials.secret_key
  sensitive = true
}