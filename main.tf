terraform {
  backend "azurerm" {
    storage_account_name = "001terraformstatefile"
    container_name       = "state"
    key                  = "sbx.terraform.tfstate"
  }
}

provider "azurerm" {
  version = "=2.0.0"
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "gossipIt" {
  name     = "mygoosiprg"
  location = "EAST US"
}