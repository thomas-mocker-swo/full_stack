resource "azurerm_resource_group" "DEMO" {
  name     = "${var.location_short}-demo-rg"
  location = var.location
  tags     = var.tags
}
