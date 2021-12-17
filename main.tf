terraform {
  required_providers {
      azurerm = {
          source = "hashicorp/azurerm"
          version = "~>2.0"
      }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "myResourceGroup" {
  name          = "myResourceGroup"
  location      = "eastasia"
  tags          = {
      environment = "Terraform Demo"
  }
}