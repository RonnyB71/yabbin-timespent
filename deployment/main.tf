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

        use_msi              = true
        subscription_id      = "3e046851-8543-4f76-9d25-c13abd522af0"
        tenant_id            = "cd0026d8-283b-4a55-9bfa-d0ef4a8ba21c"
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
