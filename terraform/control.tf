resource "azurerm_public_ip" "control" {
  name                = "pip-prod-we-ansiblelab-control"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "control" {
  name                = "nic-prod-we-ansiblelab-control"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.control.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.control.id
  }
}

resource "azurerm_linux_virtual_machine" "control" {
  name                            = "vm-prod-we-ansiblelab-control01"
  resource_group_name             = azurerm_resource_group.this.name
  location                        = azurerm_resource_group.this.location
  size                            = "Standard_DS2_v2"
  admin_username                  = "adminuser"
  admin_password                  = var.admin_password
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.control.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

resource "azurerm_virtual_machine_extension" "this" {
  name                 = "hostname"
  virtual_machine_id   = azurerm_linux_virtual_machine.control.id
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.1"

  settings = <<SETTINGS
 { 
  "commandToExecute": "sudo apt update && sudo apt install -y software-properties-common && sudo apt-add-repository --yes --update ppa:ansible/ansible && sudo apt install -y ansible"
 }
SETTINGS
}
