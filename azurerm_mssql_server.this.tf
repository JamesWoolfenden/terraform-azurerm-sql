resource "azurerm_mssql_server" "this" {
  name = "mssql-server"
  resource_group_name = "rgname"
  location = "eastus"
  version  = 12
  administrator_login = "admin"
  administrator_login_password = "password"
  minimum_tls_version = "1.2"
  public_network_access_enabled = false

  identity {
    type = "SystemAssigned"
  }


  extended_auditing_policy {
       storage_endpoint           = azurerm_storage_account.example.primary_blob_endpoint
       storage_account_access_key = azurerm_storage_account.example.primary_access_key
       storage_account_access_key_is_secondary = true
       retention_in_days                       = 90
    }
}
