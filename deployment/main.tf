# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }
  backend "azurerm" {
        resource_group_name  = "timespent-prod-rg"
        storage_account_name = "tfstate24fzv"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}

  client_id = "${var.AGENT_CLIENT_ID}"
  client_secret = "${var.AGENT_CLIENT_SECRET}"
  subscription_id = "${var.SUBSCRIPTION_ID}"
  tenant_id = "${var.TENANT_ID}"
}

resource "azurerm_resource_group" "default" {
  name     = "${var.name}-${var.environment}-rg"
  location = "${var.location}"
  tags = {
    Environment = "${var.environment}"
    Team = "DevOps-1"
  }
}
