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
  source = "storage1j"
  rg_mame = module.rg.rg_mame
  location = module.rg.location 
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type
}