resource "proxmox_vm_qemu" "vm" {
    vmid = var.vm_id
    name = var.vm_name
    target_node = var.target_node
    agent = var.agent_enabled
    sockets = var.socket_number
    cores = var.core_number
    memory = var.ram_size
    boot = "order=scsi0"
    clone = var.template_name
    scsihw = "virtio-scsi-single"
    vm_state = var.power_state

    ipconfig0  = var.template_netconfig
    skip_ipv6  = true
    ciuser =  var.template_user

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

    network {
        id = 0
        model = "virtio"
        bridge = var.bridge_name
        firewall = false
        link_down = false
    }
}