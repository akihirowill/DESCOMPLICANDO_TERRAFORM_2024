resource "mgc_virtual-machine_instances" "basic_instance" {
  name = "basic-instance-nordeste"
  machine_type = {
    name = "cloud-bs1-xsmall"
  }
  image = {
    name = "cloud-ubuntu-20.04 LTS"
  }
  network = {
    associate_public_ip_address = false
  }
  delete_public_ip = false
  ssh_key_name     = var.ssh_key_name
}