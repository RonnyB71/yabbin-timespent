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

        client_id = "${var.agent_client_id}"
        client_secret = "${var.agent_client_secret}"
        subscription_id = "${var.subscription_id}"
        tenant_id = "${var.tenant_id}"
        
    }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = "${var.name}-${var.environment}-rg"
  location = "${var.location}"
  tags = {
    Environment = "${var.environment}"
    Team = "DevOps-1"
  }
}
