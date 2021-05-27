resource "azurerm_sql_active_directory_administrator" "example" {
  server_name         = azurerm_sql_server.examplea.name
  resource_group_name = var.resource_group.name
  login               = "sqladmin"
  tenant_id           = data.azurerm_client_config.current.tenant_id
  object_id           = data.azurerm_client_config.current.object_id
}
