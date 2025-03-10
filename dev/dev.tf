module "rg" {
  source = "../terraform/resource-group"
}

module "kv" {
  source = "../terraform/key_vault"
}

module "storage" {
  source = "../terraform/storage_account" 
}

module "storage01"{
  source = "../terraform/storage_account"
}

module "Virtual_Machine"{
    source = "../terraform/windows_virtual_machine"
}