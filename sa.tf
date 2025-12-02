resource "azurerm_storage_account" "CENTRAL" {
  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_replication_type = "LRS"
  account_tier             = "Standard"
  #checkov:skip=CKV2_AZURE_38:Ensure soft-delete is enabled on Azure storage account
  #checkov:skip=CKV2_AZURE_41:Ensure storage account is configured with SAS expiration policy
  #checkov:skip=CKV_AZURE_33:Ensure Storage logging is enabled for Queue service for read, write and delete requests
  #checkov:skip=CKV_AZURE_206:Ensure that Storage Accounts use replication
  #checkov:skip=CKV2_AZURE_1:Ensure storage for critical data are encrypted with Customer Managed Key
  name                             = "euntmockerdemostorage"
  resource_group_name              = azurerm_resource_group.demo.name
  location                         = var.location
  https_traffic_only_enabled       = false
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = true
  public_network_access_enabled    = true

  tags = var.tags
}