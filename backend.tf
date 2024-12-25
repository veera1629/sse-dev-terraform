# terraform {
#   backend "azurerm" {
#     resource_group_name  = "terraform-rg"
#     storage_account_name = "terraformsa457"
#     container_name       = "terraform-statefile"
#     key                  = "azureinfra_tfstate_file.tfstate"
#     tenant_id            = "dea74a96-f58b-4c55-964e-a5e15d398a68"
#     subscription_id      = "7b3bc1c3-c733-450a-b841-f455c0ce080e"
#   }
# }