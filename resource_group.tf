terraform {
  required_version = ">= 1.5.7"
  backend "azurerm" {
    resource_group_name  = "terraform-rg"
    storage_account_name = "terraformsa457"
    container_name       = "terraform-statefile"
    key                  = "github-actions-terraform.tfstate"
  }
}
 
provider "azurerm" {
  features {}
}
 
data "azurerm_client_config" "current" {}
 
#Create Resource Group
resource "azurerm_resource_group" "rg1" {
  name     = "${var.resource_group_name}"
  location = "${var.resource_group_location}"
}