env="dev"
node="proxymoxy"
applications_config = {
  pihole = {
      ostemplate = "local:vztmpl/debian-12-standard_12.2-1_amd64.tar.zst"
      cores   = 1
      memory  = 512
      ip      = "192.168.1.81/24"
      storage = "2G"
      onboot  = false
      gateway    = "192.168.1.254"
  }
  vaultwarden = {
      ostemplate = "local:vztmpl/debian-12-standard_12.2-1_amd64.tar.zst"
      cores   = 1
      memory  = 512
      ip      = "192.168.1.82/24"
      storage = "8G"
      onboot  = false
      gateway    = "192.168.1.254"
  }
  
}
