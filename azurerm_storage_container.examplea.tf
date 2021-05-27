resource "azurerm_storage_container" "examplea" {
  #checkov:skip=CKV2_AZURE_21
  name                  = "accteststoragecontainer"
  storage_account_name  = azurerm_storage_account.examplea.name
  container_access_type = "private"
}
