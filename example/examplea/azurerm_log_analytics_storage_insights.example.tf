resource "azurerm_log_analytics_storage_insights" "example" {
  name                = "example-storageinsightconfig"
  resource_group_name = azurerm_resource_group.examplea.name
  workspace_id        = azurerm_log_analytics_workspace.examplea.id

  storage_account_id   = azurerm_storage_account.logging.id
  storage_account_key  = azurerm_storage_account.logging.primary_access_key
  blob_container_names = ["blobExamplea"]
}
