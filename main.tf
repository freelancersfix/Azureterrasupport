#main.tf
Required_providers {
  azurerm = {
     source = "hashicorp/azurerm"
     version = "3.218.0"
 }
  azuread = {
    source = "hashicorp/azuread"
    version = "2.15.0"
 }
azapi = {
  source = "hashicorp/azapi"
  version = "1.15.0"
}
}

provider "azurerm" {
   features {}
}

provider "azuread" {
}
provider "azapi" {
}



