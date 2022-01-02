resource "azurerm_container_registry" "acr" {
  name                = "${var.dns_prefix}ContainerRegistry"
  location            = "${azurerm_resource_group.default.location}"
  resource_group_name = "${azurerm_resource_group.default.name}"
  sku                 = "Basic"
  admin_enabled       = true
}