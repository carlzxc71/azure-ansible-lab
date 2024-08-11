resource "azurerm_virtual_network" "this" {
  name                = "vnet-prod-we-ansiblelab"
  address_space       = ["10.0.0.0/20"]
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
}

resource "azurerm_subnet" "control" {
  name                 = "sn-prod-we-ansiblelab-control"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.0.0.0/24"]
}

resource "azurerm_subnet" "node" {
  name                 = "sn-prod-we-ansiblelab-node"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.0.1.0/24"]
}
