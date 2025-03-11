resource "azurerm_windows_virtual_machine" "webServers" {
  name                = var.name
  resource_group_name = var.rg_name
  location            = var.location
  size                = "Standard_B2s"
  admin_username      = "azure01"
  admin_password      = "123456789xdJ"

  network_interface_ids = [
    azurerm_network_interface.example.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
