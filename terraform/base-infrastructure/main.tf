terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "2.9.11"
    }
  }
  backend "s3" {
  }
}

provider "proxmox" {
 pm_api_url             = var.PM_ENDPOINT
 pm_api_token_id        = var.PM_API_TOKEN_ID
 pm_api_token_secret    = var.PM_API_TOKEN
#  pm_tls_insecure = false
}

locals {
  app_count = length(var.applications_config) # how many LXC containers you want to spin up
  ssh_pub_key = file("~/.ssh/id_rsa.pub") # SSH public key for LXC root user
}
