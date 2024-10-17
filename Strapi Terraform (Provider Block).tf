terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.80.0"
    }
  }
}

provider "azurerm" {
  features {}
 
}

resource "azurerm_resource_group" "varunvk_strapi" {
    name = "varunvk-strapi"
    location = "UK West"
}
