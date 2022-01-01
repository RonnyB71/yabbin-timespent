# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}

  subscription_id   = "${var.subscription_id}"
  tenant_id         = "${var.tenant_id}"
  client_id         = "${var.client_id}"
  client_secret     = "${var.client_secret}"
}

resource "azurerm_resource_group" "default" {
  name     = "${var.name}-${var.environment}-rg"
  location = "${var.location}"
  tags = {
    Environment = "${var.environment}"
    Team = "DevOps-1"
  }
}
