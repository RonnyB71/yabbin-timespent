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

  subscription_id   = "${ secrets.TF_VAR_subscription_id }"
  tenant_id         = "${ secrets.TF_VAR_tenant_id }"
  client_id         = "${ secrets.TF_VAR_agent_client_id }"
  client_secret     = "${ secrets.TF_VAR_agent_client_secret }"
}

resource "azurerm_resource_group" "default" {
  name     = "${var.name}-${var.environment}-rg"
  location = "${var.location}"
  tags = {
    Environment = "${var.environment}"
    Team = "DevOps-1"
  }
}
