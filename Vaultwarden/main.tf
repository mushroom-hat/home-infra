terraform {
  required_providers {
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = ">= 0.9.0"
    }
  }
  backend "s3" {
  }
}

provider "bitwarden" {
  email = var.VW_EMAIL
  master_password = var.VW_MASTER_PASSWORD
  client_id = var.VW_CLIENT_ID
  client_secret = var.VW_CLIENT_SECRET
  server = "https://vaultwarden.zhiwen.dev"
}
