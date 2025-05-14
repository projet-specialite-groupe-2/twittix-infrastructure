<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 3.0.1-rc8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 3.0.1-rc8 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_vm_qemu.vm](https://registry.terraform.io/providers/Telmate/proxmox/3.0.1-rc8/docs/resources/vm_qemu) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_enabled"></a> [agent\_enabled](#input\_agent\_enabled) | Enable QEMU agent | `number` | `1` | no |
| <a name="input_cloudinit_storage"></a> [cloudinit\_storage](#input\_cloudinit\_storage) | Storage for the cloud-init disk | `string` | `"local-lvm"` | no |
| <a name="input_core_number"></a> [core\_number](#input\_core\_number) | Number of cores | `number` | `1` | no |
| <a name="input_networks"></a> [networks](#input\_networks) | List of network interfaces for the VM | <pre>list(object({<br/>    id        = number<br/>    bridge    = string<br/>    macaddr   = optional(string)<br/>    model     = optional(string, "virtio")<br/>    firewall  = optional(bool, false)<br/>    link_down = optional(bool, false)<br/>  }))</pre> | n/a | yes |
| <a name="input_power_state"></a> [power\_state](#input\_power\_state) | Power state of the VM | `string` | `"running"` | no |
| <a name="input_ram_size"></a> [ram\_size](#input\_ram\_size) | RAM size in MB | `number` | `1024` | no |
| <a name="input_socket_number"></a> [socket\_number](#input\_socket\_number) | Number of sockets | `number` | `1` | no |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | SSH keys for the template | `list(string)` | n/a | yes |
| <a name="input_target_node"></a> [target\_node](#input\_target\_node) | Proxmox node where the VM will be created | `string` | n/a | yes |
| <a name="input_template_name"></a> [template\_name](#input\_template\_name) | Name of the template to clone | `string` | `"debian12-cloudinit"` | no |
| <a name="input_template_netconfig0"></a> [template\_netconfig0](#input\_template\_netconfig0) | Network configuration for the template | `string` | `"ip=dhcp"` | no |
| <a name="input_template_netconfig1"></a> [template\_netconfig1](#input\_template\_netconfig1) | Network configuration for the template | `string` | `null` | no |
| <a name="input_template_netconfig2"></a> [template\_netconfig2](#input\_template\_netconfig2) | Network configuration for the template | `string` | `null` | no |
| <a name="input_template_user"></a> [template\_user](#input\_template\_user) | User for the template | `string` | `"debian"` | no |
| <a name="input_vm_disk_size"></a> [vm\_disk\_size](#input\_vm\_disk\_size) | Size of the VM disk | `string` | `"10G"` | no |
| <a name="input_vm_disk_storage"></a> [vm\_disk\_storage](#input\_vm\_disk\_storage) | Storage for the VM disk | `string` | `"local-lvm"` | no |
| <a name="input_vm_id"></a> [vm\_id](#input\_vm\_id) | proxmox ID of the virtual machine | `number` | n/a | yes |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Name of the virtual machine | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->