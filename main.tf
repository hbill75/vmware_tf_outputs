provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "datacenter" {
  name = var.vsphere_datacenter
}

data "vsphere_network" "net" {
  for_each = toset( var.vsphere_network )
  name     = each.key
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

output "network_id" {
  value = {
  for k, v in data.vsphere_network.net : k => v.id
  }
}
