resource "mgc_virtual-machine_instances" "basic_instance" {
  name             = "${var.name}-${var.environment}"
  delete_public_ip = true
  ssh_key_name     = var.ssh_key_name

  machine_type = {
    name = var.machine_type
  }
  image = {
    name = "cloud-ubuntu-20.04 LTS"
  }
  network = {
    associate_public_ip_address = var
  }

}

resource "mgc_dbaas_instance" "basic_db" {
  flavor_id = "cloud-dbaas-bs1.small"
  name      = "${var.name}-${var.environment}-db"
  password  = var.password
  user      = var.db_user
  volume = {
    size = "100GiB"
  }
}