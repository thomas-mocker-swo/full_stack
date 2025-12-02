resource "azurerm_storage_account" "central" {
  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_replication_type = "LRS"
  account_tier             = "Standard"
  #checkov:skip=CKV_AZURE_43:The Name does comply with the required pattern and length and company naming conventions
  #checkov:skip=CKV2_AZURE_38:OK
  #checkov:skip=CKV2_AZURE_41:OK
  #checkov:skip=CKV_AZURE_33:OK
  #checkov:skip=CKV_AZURE_206:OK
  name                             = "euntmockerdemostorage"
  resource_group_name              = azurerm_resource_group.demo.name
  location                         = var.location
  https_traffic_only_enabled       = false
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = true
  public_network_access_enabled    = true

  tags = var.tags
}