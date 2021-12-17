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

resource "azurerm_virtual_network" "myTerraformNetwork" {
  name                  = "myVnet"
  address_space         = ["10.0.0.0/16"]
  location              = "eastasia"
  resource_group_name   = azurerm_resource_group.myResourceGroup.name
  tags                  = {
      environment       = "Terraform Demo"
  }
}