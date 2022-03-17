/*
provider "bigip" {
  alias    = "bigip1"
  address  = azurerm_public_ip.vm01mgmtpip.ip_address
  username = var.uname
  password = var.upassword
}

resource "bigip_command" "revoke-license-vm1" {
  provider = bigip.bigip1
  when     = "destroy"
  commands = ["revoke /sys license"]
}

provider "bigip" {
  alias    = "bigip2"
  address  = azurerm_public_ip.vm02mgmtpip.ip_address
  username = var.uname
  password = var.upassword
}

resource "bigip_command" "revoke-license-vm2" {
  provider = bigip.bigip2
  when     = "destroy"
  commands = ["revoke /sys license"]
}
*/