
resource "bitwarden_folder" "local" {
  name = "proxmox-root-passwords"
}

# This is the resource that will create the login items in Vaultwarden using passwords generated in Base
resource "bitwarden_item_login" "lxc_item_login" {
  for_each = data.terraform_remote_state.base_infra.outputs.applications_config

  name      = each.key
  username  = "root"
  password  = data.terraform_remote_state.base_infra.outputs.generated_passwords[each.key]
  # uri       {
  #   value   = "https://${each.key}.zhiwen.dev"
  #   match   = "host"
  # } 
  folder_id = bitwarden_folder.local.id
  notes     = "Generated and maintained by Terrafrom. Passwords to containers not the application itself"
}
