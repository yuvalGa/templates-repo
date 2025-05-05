resource "azurerm_storage_account" "example" {
  name                     = var.storage_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_kind             = "StorageV2"
  account_replication_type = "GRS"
}

variable "storage" {
  description = "The name of the Storage Account to create."
  type        = string
  default     = null
}

variable "resource_group" {
  description = "Name of the existing Azure Resource Group in which the Storage Account will be created."
  type        = string
  default     = null
}

variable "location" {
  description = "Azure region where the Storage Account and associated resources will be deployed (e.g., eastus, westeurope)."
  type        = string
  default     = null
}
