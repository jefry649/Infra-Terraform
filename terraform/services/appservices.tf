resource "azurerm_app_service_plan" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}

resource "azurerm_monitor_diagnostic_setting" "example" {
  name = "appjef1"
  target_resource_id = azurerm_app_service.example.id
  storage_account_id = var.storage_account_id
  /* 
  enabled_log {
    category = "AuditEvent"
  }
  */
  
  metric {
    category = "AllMetrics"
  }
}

  resource "azurerm_monitor_diagnostic_setting" "name" {
    name = "appservicej"
    target_resource_id = azurerm_app_service_plan.example.id
    storage_account_id = var.storage_account_id

    metric {
      category = "AllMetrics"
      }
}

