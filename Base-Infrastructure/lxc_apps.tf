resource "proxmox_lxc" "lxc" {
  for_each     = var.applications_config  # Use the variable defined in tfvars

  target_node  = var.node
  hostname     = "lxc-${var.env}-${each.key}"
  ostemplate   = each.value.ostemplate
  password     = random_password.password[each.key].result
  unprivileged = true
  ssh_public_keys = local.ssh_pub_key

  rootfs {
    storage = "local-lvm"
    size    = each.value.storage
  }

  cores  = each.value.cores
  memory = each.value.memory

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = each.value.ip
    gw     = each.value.gateway
  }

  onboot = each.value.onboot
}
