resource "azurerm_sql_database" "examplea" {
  resource_group_name = var.resource_group.name
  location            = var.resource_group.location
  name                = var.database_name
  server_name         = azurerm_sql_server.examplea.name
  tags                = var.common_tags
}
