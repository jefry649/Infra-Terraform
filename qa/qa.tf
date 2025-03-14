module "rg" {
  source = "../terraform/resource-group"
  rg_name = "jefryqa"
}

#Storage Account usado para almacenar los Diagnostic Settings de todo el ambiente
module "azurerm_storage_account" {
  source =  "../terraform/storage_account"
  name = "storage01jc" 
  rg_name = module.rg.rg_name
  location = module.rg.location 
  account_tier = "Standard"
  account_replication_type = "LRS"
  } 

module "kv" {
  source = "../terraform/key_vault"
  name = "Keyvautlj1"
  rg_name = module.rg.rg_name
  location = module.rg.location
  storage_account_id = module.azurerm_storage_account.id
  } 

  module "azurerm_app_service_plan" {
    source = "../terraform/services"
    name = "appsjef"
    rg_name = module.rg.name
    location = module.rg.location 
    storage_account_id = var.storage_account_id.id
  }    
