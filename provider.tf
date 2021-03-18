variable "ibmcloud_api_key" {}
variable "iaas_classic_username" {}
variable "iaas_classic_api_key" {}
variable "private_vlan_id" {}
variable "os_ref_code" {}
variable "ssh_key" {}
variable "is_private" {}
variable "vcpu" {}
variable "datacenter" {}
variable "network_speed" {}
variable "hourly_billing" {}
variable "memory" {}
variable "disk_size" {}
variable "local_disk" {}
variable "domain_name" {}

provider "ibm" {
  ibmcloud_api_key      = "${var.ibmcloud_api_key}"
  generation            = 1
  region                = "us-south"
  iaas_classic_username = "${var.iaas_classic_username}"
  iaas_classic_api_key  = "${var.iaas_classic_api_key}"
}

/*

resource "ibm_compute_ssh_key" "test_key_1" {
  label      = "test_key_1"
  public_key = "${var.ssh_key}"
}
*/
