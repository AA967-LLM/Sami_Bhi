terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
}

provider "azurerm" {
    features {}

    subscription_id = "b0058222-b5d0-4f2f-bb9d-9191ac5ffe1b"
}