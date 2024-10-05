variable "VW_EMAIL" {
  description = "Vaultwarden Email"
  type        = string
}

variable "VW_MASTER_PASSWORD" {
  description = "Vaultwarden Master Password"
  type        = string
  sensitive   = true
}

variable "VW_CLIENT_ID" {
  description = "Vaultwarden Client ID"
  type        = string
}

variable "VW_CLIENT_SECRET" {
  description = "Vaultwarden Client Secret"
  type        = string
  sensitive   = true
}

variable "env" {
    description = "Environment"
    type        = string
    default     = "dev"
}