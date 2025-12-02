resource "azurerm_storage_account" "central" {
  access_tier                      = "Hot"
  account_kind                     = "StorageV2"
  account_replication_type         = "LRS"
  account_tier                     = "Standard"
  #checkov:skip=CKV_AZURE_43:The Name does comply with the required pattern and length and company naming conventions
  name                             = "euntmockerdemostoragecentral"
  resource_group_name              = azurerm_resource_group.demo.name
  location                         = var.env.location
  https_traffic_only_enabled       = false
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = true
  public_network_access_enabled    = true

  tags = var.tags
}