terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  use_oidc = true
}

variable "subscription_id" {
  type = string
}

resource "azurerm_resource_group" "rg" {
  name     = "github-actions-rg"
  location = "Central India"
}
