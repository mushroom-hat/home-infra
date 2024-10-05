output "generated_passwords" {
  value = { for app_key, app in var.applications_config : app_key => random_password.password[app_key].result }
  sensitive = true
}

output "applications_config" {
  value = var.applications_config
}