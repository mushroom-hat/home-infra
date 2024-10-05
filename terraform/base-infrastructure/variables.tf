variable "env" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "node" {
  description = "Proxmox Node"
  type        = string
}

variable "applications_config" {
  description = "Applications Configuration"
  type        = map(object({
    ostemplate = string
    cores      = number
    memory     = number
    ip         = string
    storage    = string
    onboot     = bool
    gateway    = string
  }))
}

variable "PM_ENDPOINT" {
  description = "Proxmox Local Endpoint"
  type        = string
}

variable "PM_API_TOKEN_ID" {
  description = "Proxmox API Token ID"
  type        = string
} 

variable "PM_API_TOKEN" {
  description = "Proxmox API Token"
  type        = string
  sensitive   = true
}
