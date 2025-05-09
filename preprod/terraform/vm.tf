module "twittix-1" {
  source = "./modules/VM"
  vm_name = "twittix-1"
  vm_id = 5001
  target_node = "proxmox"
  agent_enabled = 1
  socket_number = 1
  core_number = 2
  ram_size = 2048
  vm_disk_storage = "local"
  vm_disk_size = "10G"
  cloudinit_storage = "local"
  power_state = "running"
  template_name = "debian12-cloudinit"
  template_user = "debian"
  template_netconfig0 = "ip=51.254.57.62/32,gw=51.254.57.62"
  template_netconfig1 = "ip=192.168.1.1/23,gw=192.168.1.254"
  template_netconfig2 = "ip=192.168.5.1/23,gw=192.168.5.254"
  ssh_keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsHeb1jwR/CLX+qe1Szd3e7FyhhFjczZhZjy2HE12UuIeF8lRmZvunnylTik5hModPlIPwfp/CnFMaRO0U+QVTZc+lu5Zpq8xCsiA6o4FTxaKPDEDwy7BoAbQ6RQGI4OV7JwevBAwgO9OtAGm4mUo/DX+779huNxIsekg/XC6tRI3hVLh3AwHvIeREl49ESQLa0BANvjF9qdJkETg5CMrL+5811Rt7FmBZ6FBE9Xb+hVoIhMxK3rExb97p9xnCmQGUVLNy0hID1SdRoaD202cVixsxCIv+Gg8QQI0KqAkGA3yCZdzDVxq8VD6d1NPliub8FMTZMzgnd80RRlqraHU7ZiJTxQWvjcxI9aDf1+7S50NwhiU2Ulh+GAsmiA9GD56VjZLgGRyHM9Uoja6jN/k3/ucsT3XjXyWLG6Z4qo6hWtN7CQ8kUUrhGqMOvCx64suqM4jIaFM3Lpku4ZrGupFaALf33yAKtf5UT7khm8390qDzFHZntT90PuKGXMMiCdV1WLwJzLtIuXh8+hbs2sXo0RqU4BHe4E17BnWPfyoE/y3ykBTuCcpjxY3hzvdyHOIVcJFjIBPh2Gdjg3Re17x6Lw+/7z8W/9vJzmxnp3RyjQQs5myz9TNqJ7KpZFj2EF9xPYT2Rcej1NV30Q3W4TWy3oOj2LmAgGhbpiIX5uMFKw== root@proxmox",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHNWOWlV9zGPKkTyB/qtPx7AaCEvfGSmNuWhmBoB8cdR adupuis@DESKTOP-V0M94BK",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDGir2AhlmtdzreTmttxn8g3HhQUn3YRH0UtEoNMtqYy blizzar@nexus",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIX5D2nBkr6jjacLw0Ol9E4JAeaPXDgEVezdmG8rV7x+ theo@xps-9315",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO22wc71nm4xqpTcezmvL9GycZVbDmojjbrm8JujaTiR theo@tuf-b450"
  ]
  networks = [
    {
      id     = 0
      bridge = "vmbr0"
      macaddr = "02:00:00:24:cd:79"
    },
    {
      id     = 1
      bridge = "vmbr1"
    },
    {
      id     = 2
      bridge = "vmbr2"
    }
  ]
}

module "twittix-2" {
  source = "./modules/VM"
  vm_name = "twittix-2"
  vm_id = 5002
  target_node = "proxmox"
  agent_enabled = 1
  socket_number = 1
  core_number = 2
  ram_size = 2048
  vm_disk_storage = "local"
  vm_disk_size = "10G"
  cloudinit_storage = "local"
  power_state = "running"
  template_name = "debian12-cloudinit"
  template_user = "debian"
  template_netconfig0 = "ip=192.168.5.2/23,gw=192.168.5.254"
  template_netconfig1 = "ip=192.168.1.2/23,gw=192.168.1.254"
  ssh_keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsHeb1jwR/CLX+qe1Szd3e7FyhhFjczZhZjy2HE12UuIeF8lRmZvunnylTik5hModPlIPwfp/CnFMaRO0U+QVTZc+lu5Zpq8xCsiA6o4FTxaKPDEDwy7BoAbQ6RQGI4OV7JwevBAwgO9OtAGm4mUo/DX+779huNxIsekg/XC6tRI3hVLh3AwHvIeREl49ESQLa0BANvjF9qdJkETg5CMrL+5811Rt7FmBZ6FBE9Xb+hVoIhMxK3rExb97p9xnCmQGUVLNy0hID1SdRoaD202cVixsxCIv+Gg8QQI0KqAkGA3yCZdzDVxq8VD6d1NPliub8FMTZMzgnd80RRlqraHU7ZiJTxQWvjcxI9aDf1+7S50NwhiU2Ulh+GAsmiA9GD56VjZLgGRyHM9Uoja6jN/k3/ucsT3XjXyWLG6Z4qo6hWtN7CQ8kUUrhGqMOvCx64suqM4jIaFM3Lpku4ZrGupFaALf33yAKtf5UT7khm8390qDzFHZntT90PuKGXMMiCdV1WLwJzLtIuXh8+hbs2sXo0RqU4BHe4E17BnWPfyoE/y3ykBTuCcpjxY3hzvdyHOIVcJFjIBPh2Gdjg3Re17x6Lw+/7z8W/9vJzmxnp3RyjQQs5myz9TNqJ7KpZFj2EF9xPYT2Rcej1NV30Q3W4TWy3oOj2LmAgGhbpiIX5uMFKw== root@proxmox",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHNWOWlV9zGPKkTyB/qtPx7AaCEvfGSmNuWhmBoB8cdR adupuis@DESKTOP-V0M94BK",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDGir2AhlmtdzreTmttxn8g3HhQUn3YRH0UtEoNMtqYy blizzar@nexus",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIX5D2nBkr6jjacLw0Ol9E4JAeaPXDgEVezdmG8rV7x+ theo@xps-9315",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO22wc71nm4xqpTcezmvL9GycZVbDmojjbrm8JujaTiR theo@tuf-b450"
  ]

  networks = [
    {
      id     = 0
      bridge = "vmbr2"
    },
    {
      id     = 1
      bridge = "vmbr1"
    }
  ]
}

module "monitoring" {
  source = "./modules/VM"
  vm_name = "monitoring"
  vm_id = 5003
  target_node = "proxmox"
  agent_enabled = 1
  socket_number = 1
  core_number = 2
  ram_size = 2048
  vm_disk_storage = "local"
  vm_disk_size = "10G"
  cloudinit_storage = "local"
  power_state = "running"
  template_name = "debian12-cloudinit"
  template_user = "debian"
  template_netconfig0 = "ip=192.168.5.3/23,gw=192.168.5.254"
  template_netconfig1 = "ip=192.168.1.3/23,gw=192.168.1.254"
  ssh_keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsHeb1jwR/CLX+qe1Szd3e7FyhhFjczZhZjy2HE12UuIeF8lRmZvunnylTik5hModPlIPwfp/CnFMaRO0U+QVTZc+lu5Zpq8xCsiA6o4FTxaKPDEDwy7BoAbQ6RQGI4OV7JwevBAwgO9OtAGm4mUo/DX+779huNxIsekg/XC6tRI3hVLh3AwHvIeREl49ESQLa0BANvjF9qdJkETg5CMrL+5811Rt7FmBZ6FBE9Xb+hVoIhMxK3rExb97p9xnCmQGUVLNy0hID1SdRoaD202cVixsxCIv+Gg8QQI0KqAkGA3yCZdzDVxq8VD6d1NPliub8FMTZMzgnd80RRlqraHU7ZiJTxQWvjcxI9aDf1+7S50NwhiU2Ulh+GAsmiA9GD56VjZLgGRyHM9Uoja6jN/k3/ucsT3XjXyWLG6Z4qo6hWtN7CQ8kUUrhGqMOvCx64suqM4jIaFM3Lpku4ZrGupFaALf33yAKtf5UT7khm8390qDzFHZntT90PuKGXMMiCdV1WLwJzLtIuXh8+hbs2sXo0RqU4BHe4E17BnWPfyoE/y3ykBTuCcpjxY3hzvdyHOIVcJFjIBPh2Gdjg3Re17x6Lw+/7z8W/9vJzmxnp3RyjQQs5myz9TNqJ7KpZFj2EF9xPYT2Rcej1NV30Q3W4TWy3oOj2LmAgGhbpiIX5uMFKw== root@proxmox",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHNWOWlV9zGPKkTyB/qtPx7AaCEvfGSmNuWhmBoB8cdR adupuis@DESKTOP-V0M94BK",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDGir2AhlmtdzreTmttxn8g3HhQUn3YRH0UtEoNMtqYy blizzar@nexus",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIX5D2nBkr6jjacLw0Ol9E4JAeaPXDgEVezdmG8rV7x+ theo@xps-9315",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO22wc71nm4xqpTcezmvL9GycZVbDmojjbrm8JujaTiR theo@tuf-b450"
  ]

  networks = [
    {
      id     = 0
      bridge = "vmbr2"
    },
    {
      id     = 1
      bridge = "vmbr1"
    }
  ]
}