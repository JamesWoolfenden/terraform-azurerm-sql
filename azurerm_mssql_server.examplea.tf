resource "azurerm_mssql_server" "examplea" {
  #checkov:skip=CKV_AZURE_23:Deprecated test as separate resource
  #checkov:skip=CKV_AZURE_24:Deprecated test as separate resource
  name                          = var.sql_server
  resource_group_name           = var.resource_group.name
  location                      = var.resource_group.location
  version                       = var.sql["version"]
  administrator_login           = var.sql["administrator_login"]
  administrator_login_password  = local.administrator_login_password
  minimum_tls_version           = var.sql["minimum_tls_version"]
  public_network_access_enabled = var.sql["public_network_access_enabled"]

  identity {
    type = "SystemAssigned"
  }

  /* new resource replaces this block
  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.examplea.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.examplea.primary_access_key
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 90
  }*/
}
