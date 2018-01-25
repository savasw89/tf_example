# Configure the Provider
variable "user_name" {}
variable "domain_name" {}
variable "password" {}
variable "tenant_name" {}

provider "opentelekomcloud" {
  user_name   = "${var.user_name}"
  domain_name = "${var.domain_name}"
  password    = "${var.password}"
  auth_url    = "https://iam.eu-de.otc.t-systems.com/v3"
  tenant_name  ="${var.tenant_name}"
}



resource "opentelekomcloud_networking_network_v2" "selected" {
  name = "terraform-jenkins-network"
  admin_state_up = "true"
}

output "myOutput" {
  value = "${opentelekomcloud_networking_network_v2.selected.id}"
}
