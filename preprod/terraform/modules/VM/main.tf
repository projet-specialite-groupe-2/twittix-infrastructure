resource "proxmox_vm_qemu" "vm" {
    vmid = var.vm_id
    name = var.vm_name
    target_node = var.target_node
    agent = var.agent_enabled
    sockets = var.socket_number
    cores = var.core_number
    cpu_type = var.cpu_type
    memory = var.ram_size
    boot = "order=scsi0"
    clone = var.template_name
    scsihw = "virtio-scsi-single"
    vm_state = var.power_state

    # Vérifie que la variable ipconfig_0 est définie avant de l'utiliser
    ipconfig0 = try(length(var.template_netconfig0) > 0 ? var.template_netconfig0 : null, null)
    ipconfig1 = try(length(var.template_netconfig1) > 0 ? var.template_netconfig1 : null, null)
    ipconfig2 = try(length(var.template_netconfig2) > 0 ? var.template_netconfig2 : null, null)

    skip_ipv6  = true
    ciuser =  var.template_user
    ciupgrade = true

    # Multiple SSH keys as a single string using Heredoc
    sshkeys = join("\n", var.ssh_keys)

    # Most cloud-init images require a serial device for their display
    serial {
        id = 0
    }

    disks {
        scsi {
          scsi0 {
            disk {
              storage = var.vm_disk_storage
              size = var.vm_disk_size
            }
          }
        }
        ide {
            ide1 {
              cloudinit {
                storage = var.cloudinit_storage
              }
            }
        }
    }

    dynamic "network" {
      for_each = var.networks
      content {
        id        = network.value.id
        model     = lookup(network.value, "model", "virtio")
        bridge    = network.value.bridge
        macaddr = network.value.macaddr
        firewall  = lookup(network.value, "firewall", false)
        link_down = lookup(network.value, "link_down", false)
      }
    }
}