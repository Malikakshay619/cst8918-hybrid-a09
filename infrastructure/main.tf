provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "cst8918-rg"
  location = "EaS
}

resource "azurerm_storage_account" "storage" {
  name                     = "cst8918storageacct"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
