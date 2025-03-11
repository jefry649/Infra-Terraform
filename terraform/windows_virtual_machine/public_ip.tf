resource "azurerm_public_ip" "example" {
  name                = var.name
  resource_group_name = var.location
  location            = var.rg_name
  allocation_method   = "Static"
}