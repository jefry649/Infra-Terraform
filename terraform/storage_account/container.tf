resource "azurerm_storage_container" "container" {
  name                  = "micontenedor"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "container"
  }

