terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    gitlab = {
      source = "gitlabhq/gitlab"
    }
  }
  backend "azurerm" {}
}
