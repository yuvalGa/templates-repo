resource "azurerm_storage_account" "example" {
  name                     = var.storage_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_kind             = "StorageV2"
  account_replication_type = "GRS"
}

variable "storage_name" {
}

variable "resource_group_name" {
}

variable "location" {
}
