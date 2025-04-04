module "rg" {
  source = "../terraform/resource-group"
}

module "kv" {
  source = "../terraform/key_vault"
  name = "Keyvautlj"
  rg_name = module.rg.rg_name
  location = module.rg.location
}
