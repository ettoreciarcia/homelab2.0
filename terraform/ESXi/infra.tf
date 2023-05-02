resource "vsphere_virtual_machine" "example_vm" {
  name             = "controlplane"
  resource_pool_id = "your-resource-pool-id"
  datastore        = "datastore1"
  folder           = "your-folder-name"
  guest_id         = "ubuntu64Guest"
  num_cpus         = 2
  memory           = 4096
  network_interface {
    network_id = "your-network-id"
  }
  disk {
    label            = "example-disk"
    size             = 20
    eagerly_scrub    = true
    thin_provisioned = true
  }
}