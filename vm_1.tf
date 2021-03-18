# Creation of the private subnet

resource "ibm_compute_vm_instance" "vm1" {
  hostname             = "VirtualMachine1"
  domain               = "${var.domain_name}"
  os_reference_code    = "${var.os_ref_code}"
#  ssh_key_ids          = ["${ibm_compute_ssh_key.test_key_1.id}"]
  datacenter           = "${var.datacenter}"
  network_speed        = "${var.network_speed}"
  hourly_billing       = "${var.hourly_billing}"
  private_network_only = "${var.is_private}"
  cores                = "${var.vcpu}"
  memory               = "${var.memory}"
  disks                = ["${var.disk_size}"]
  local_disk           = "${var.local_disk}"
}

