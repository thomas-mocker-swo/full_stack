resource "azurerm_resource_group" "DEMo" {
  name     = "${var.location_short}-demo-rg"
  location = var.location
  tags     = var.tags
}
