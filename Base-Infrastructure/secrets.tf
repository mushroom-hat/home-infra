resource "random_password" "password" {
  for_each   = var.applications_config
  length  = 14
  special = true
  upper   = true
  lower   = true
  numeric  = true   
}
