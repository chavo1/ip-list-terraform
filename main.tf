variable "prefix" {
  default = "tf-chavo"
}

resource "azurerm_resource_group" "main-chavo" {
  name     = "${var.prefix}-resources"
  location = "West US 2"
}

resource "azurerm_virtual_network" "main-chavo" {
  name                = "${var.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = "${azurerm_resource_group.main-chavo.location}"
  resource_group_name = "${azurerm_resource_group.main-chavo.name}"
}

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = "${azurerm_resource_group.main-chavo.name}"
  virtual_network_name = "${azurerm_virtual_network.main-chavo.name}"
  address_prefix       = "10.0.2.0/24"
}

resource "azurerm_network_interface" "main-chavo" {
  name                = "${var.prefix}-nic"
  location            = "${azurerm_resource_group.main-chavo.location}"
  resource_group_name = "${azurerm_resource_group.main-chavo.name}"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "${azurerm_subnet.internal.id}"
    private_ip_address_allocation = "Dynamic"
  }
}
