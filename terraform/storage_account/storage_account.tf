
resource "azurerm_storage_account" "example" {
  name                = var.name
  resource_group_name = azurerm_resource_group.main.name

  location                 = var.location 
  account_tier             = "Standard"
  account_replication_type = "LRS"

  allow_nested_items_to_be_public = true

  network_rules {
    default_action = "Deny"
    ip_rules       = ["38.25.27.50"]
  }

  tags = {
    environment = "staging"
  }
}
