resource "azurerm_mssql_server_security_alert_policy" "example" {
  resource_group_name        = var.resource_group.name
  server_name                = azurerm_sql_server.examplea.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.examplea.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.examplea.primary_access_key
  disabled_alerts            = []
  email_addresses            = var.email_addresses
  email_account_admins       = true
  retention_days             = 20
}

variable "email_addresses" {
  type = list(any)
}
