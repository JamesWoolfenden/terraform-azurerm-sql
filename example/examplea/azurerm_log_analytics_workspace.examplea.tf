
resource "azurerm_log_analytics_workspace" "examplea" {
  name                = "exampleworkspace"
  location            = azurerm_resource_group.examplea.location
  resource_group_name = azurerm_resource_group.examplea.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}
