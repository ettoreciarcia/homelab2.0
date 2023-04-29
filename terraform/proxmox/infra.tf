# resource "proxmox_lxc" "basic" {
#   target_node  = "aragorn"
#   hostname     = "ubuntu-node"
#   ostype =  "ubuntu"
#   ostemplate   = "local:vztmpl/ubuntu-22.10-standard_22.10-1_amd64.tar.zst"
#   password     = "BasicLXCContainer"
#   unprivileged = true

#   // Terraform will crash without rootfs defined
#   rootfs {
#     storage = "local-lvm"
#     size    = "15G"
#   }


#   network {
#     name   = "eth0"
#     bridge = "vmbr0"
#     ip     = "dhcp"
#   }
# }



resource "proxmox_vm_qemu" "example_vm" {
  name = "example-vm"
  target_node = "aragorn"
  clone = "local:iso/ubuntu-22.10-live-server-amd64.iso"

  cpu = 2
  memory = 2048
  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  disk {
    size = "10G"
    type = "scsi"
    storage = "local-lvm"
  }

}