module "twittix-1" {
  source = "./modules/VM"
  vm_name = "twittix-1"
  vm_id = 8001
  target_node = "proxmox"
  agent_enabled = 1
  socket_number = 1
  core_number = 2
  ram_size = 2048
  vm_disk_storage = "local"
  vm_disk_size = "25G"
  cloudinit_storage = "local"
  power_state = "running"
  template_name = "debian12-cloudinit"
  template_user = "debian"
  template_netconfig = "ip=51.254.57.62/32,gw=51.254.57.62/32"
  ssh_keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHNWOWlV9zGPKkTyB/qtPx7AaCEvfGSmNuWhmBoB8cdR adupuis@DESKTOP-V0M94BK"
  ]
  bridge_name = "vmbr0"
}

module "twittix-2" {
  source = "./modules/VM"
  vm_name = "twittix-2"
  vm_id = 8002
  target_node = "proxmox"
  agent_enabled = 1
  socket_number = 1
  core_number = 2
  ram_size = 2048
  vm_disk_storage = "local"
  vm_disk_size = "25G"
  cloudinit_storage = "local"
  power_state = "running"
  template_name = "debian12-cloudinit"
  template_user = "debian"
  template_netconfig = "ip=192.168.10.3/24,gw=192.168.10.254"
  ssh_keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHNWOWlV9zGPKkTyB/qtPx7AaCEvfGSmNuWhmBoB8cdR adupuis@DESKTOP-V0M94BK"
  ]
  bridge_name = "vmbr1"
}