resource "azurerm_windows_virtual_machine" "webServers" {
  name                = "webServers"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  size                = "Standard_B2s"
  admin_username      = "azure01"
  admin_password      = "123456789xdJ"
  network_interface_ids = [
    azurerm_network_interface.nic.id,
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
