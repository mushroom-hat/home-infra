env="dev"
node="proxymoxy"
applications_config = {
  pihole = {
      ostemplate = "local:vztmpl/debian-12-standard_12.2-1_amd64.tar.zst"
      cores   = 1
      memory  = 512
      ip      = "192.168.1.12/24"
      storage = "2G"
      onboot  = true
      gateway    = "192.168.1.254"
  }
  vaultwarden = {
      ostemplate = "local:vztmpl/debian-12-standard_12.2-1_amd64.tar.zst"
      cores   = 1
      memory  = 512
      ip      = "192.168.1.13/24"
      storage = "6G"
      onboot  = true
      gateway    = "192.168.1.254"
  }
  
}
