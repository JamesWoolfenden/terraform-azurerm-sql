resource "azurerm_sql_server" "examplea" {
  #checkov:skip=CKV_AZURE_23:Deprecated test as separate resource
  #checkov:skip=CKV_AZURE_24:Deprecated test as separate resource
  name                         = var.sql_server
  resource_group_name          = var.resource_group.name
  location                     = var.resource_group.location
  version                      = var.sql["version"]
  administrator_login          = var.sql["administrator_login"]
  administrator_login_password = local.administrator_login_password

  identity {
    type = "SystemAssigned"
  }

  tags = var.common_tags
}
