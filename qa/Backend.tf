terraform {
  backend "azurerm" {
    resource_group_name = "ResouceQa"
    storage_account_name = "azustore1j"
    container_name       = "terraform1"
    key                  = "stateAcqa.tfstate"
  }
}

provider "azurerm" {
  features {
  }

  #client_id       = var.sp_id
  #client_secret   = var.sp_secret
  tenant_id       = "72d35382-2664-4b5a-b81f-30857ebe34de"
  subscription_id = "19878b4e-5ec5-491a-b4af-93fbc23b5c02"
}