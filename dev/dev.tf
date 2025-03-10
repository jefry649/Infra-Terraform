module "rg" {
  source = "../terraform/resource-group"
}

module "kv" {
  source = "../terraform/key_vault"
  name = "Keyvautl00"
  rg_name = module.rg.rg_name
  location = module.rg.location
}

module "kv01" {
  source = "../terraform/key_vault"
  name = "keyvault01"
  rg_name = module.rg.rg_name
  location = module.rg.location
}

/*
module "storage" {
  source = "../terraform/storage_account" 
}

module "storage01"{
  source = "../terraform/storage_account"
}

module "Virtual_Machine"{
    source = "../terraform/windows_virtual_machine"
}
*/