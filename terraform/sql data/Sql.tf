
resource "azurerm_mssql_server" "example" {
  name                         = "appsj2"
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "thisIsKat11"
  minimum_tls_version          = "1.2"

  tags = {
    environment = "production"
  }
}

resource "azurerm_mssql_database" "example" {
  name         = "app1j"
  server_id    = azurerm_mssql_server.example.id 
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S1"
  enclave_type = "VBS"

  tags = {
    foo = "bar"
  }

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}