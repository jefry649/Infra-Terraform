resource "azurerm_key_vault" "example" {
  name                = "jefrykeyvault"
  location            = var.location
  resource_group_name = var.rg_name
  sku_name            = "standard"
  tenant_id           = "72d35382-2664-4b5a-b81f-30857ebe34de" # Reemplaza con tu Tenant ID de Azure
}