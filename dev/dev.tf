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
  name = "keyvaulJefry1"
  rg_name = module.rg.rg_name
  location = module.rg.location
}

module "storage" {
  source = "../terraform/storage_account"
  name = "storagejefry01"
  rg_name  = module.rg.rg_name
  location = module.rg.location
   
}

module "storage01" {
  source = "../terraform/storage_account"
  name = "storagejefry02"
  rg_name = module.rg.rg_name
  location = module.rg.location
}

module "VirtualMachine" {
  source = "../terraform/windows_virtual_machine"
  name = "VMJ1"
  rg_name = module.rg.rg_name
  location = module.rg.location
}


