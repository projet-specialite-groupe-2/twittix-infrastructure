variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "vm_id" {
  description = "proxmox ID of the virtual machine"
  type        = number
}

variable "target_node" {
  description = "Proxmox node where the VM will be created"
  type        = string
}

variable "agent_enabled" {
  description = "Enable QEMU agent"
  type        = number
  default     = 1
}

variable "socket_number" {
  description = "Number of sockets"
  type        = number
  default     = 1
}

variable "core_number" {
  description = "Number of cores"
  type        = number
  default     = 1
}

variable "ram_size" {
  description = "RAM size in MB"
  type        = number
  default     = 1024
}

variable "template_name" {
  description = "Name of the template to clone"
  type        = string
  default     = "debian12-cloudinit"
}

variable "power_state" {
  description = "Power state of the VM"
  type        = string
  default     = "running"
}

variable "template_netconfig0" {
  description = "Network configuration for the template"
  type        = string
  default     = "ip=dhcp"
}

variable "template_netconfig1" {
  description = "Network configuration for the template"
  type        = string
  default = null
}

variable "template_netconfig2" {
  description = "Network configuration for the template"
  type        = string
  default = null
}

variable "template_user" {
    description = "User for the template"
    type        = string
    default     = "debian"
}

variable "ssh_keys" {
    description = "SSH keys for the template"
    type        = list(string)
}

variable "vm_disk_storage" {
    description = "Storage for the VM disk"
    type        = string
    default     = "local-lvm"
}

variable "vm_disk_size" {
    description = "Size of the VM disk"
    type        = string
    default     = "10G"
}

variable "cloudinit_storage" {
    description = "Storage for the cloud-init disk"
    type        = string
    default     = "local-lvm"
}

variable "networks" {
  description = "List of network interfaces for the VM"
  type = list(object({
    id        = number
    bridge    = string
    model     = optional(string, "virtio")
    firewall  = optional(bool, false)
    link_down = optional(bool, false)
  }))
}
