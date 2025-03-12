resource "azurerm_storage_container" "container" {
  name                  = "micontenedor"
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
}

