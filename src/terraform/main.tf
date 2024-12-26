

# Set the Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.46.0"
    }
  }

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