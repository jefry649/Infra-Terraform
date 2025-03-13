module "rg" {
  source = "../terraform/resource-group"
  rg_name = "jefryqa"
}

module "kv" {
  source = "../terraform/key_vault"
  name = "Keyvautlj1"
  rg_name = module.rg.rg_name
  location = module.rg.location
} 

module "azurerm_storage_account" {
  source =  "../terraform/storage_account"
  name = "storage01jc" 
  rg_name = module.rg.rg_name
  location = module.rg.location 
  account_tier = "Standard"
  account_replication_type = "LRS"
  } 