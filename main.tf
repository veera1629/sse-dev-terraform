terraform {
  required_version = ">= 1.5.7"
  backend "azurerm" {
    resource_group_name  = "terraform-rg"
    storage_account_name = "terraformsa457"
    container_name       = "terraform-statefile"
    key                  = "azureinfra_tfstate_file.tfstate"
  }
}
 
provider "azurerm" {
  features {}
}
 
data "azurerm_client_config" "current" {}
 
#Create Resource Group
resource "azurerm_resource_group" "tamops" {
  name     = "veera-rg-001"
  location = "uksouth"
}