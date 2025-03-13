resource "azurerm_key_vault" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  sku_name            = "standard"
  tenant_id           = "72d35382-2664-4b5a-b81f-30857ebe34de" # Reemplaza con tu Tenant ID de Azure
}

resource "azurerm_monitor_diagnostic_setting" "example" {
  name               = "example"
  target_resource_id = azurerm_key_vault.example.id
  storage_account_id = azurerm_storage_account.example.id

  enabled_log {
    category = "AuditEvent"
  }

  metric {
    category = "AllMetrics"
  }
}