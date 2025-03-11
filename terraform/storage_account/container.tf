resource "azurerm_storage_id" "container" {
  name                  = "micontenedor"
  storage_account_name  = azurerm_storage_account.example.id 
  container_access_type = "private"
}

