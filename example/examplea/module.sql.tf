module "sql" {
  source                  = "../../"
  common_tags             = var.common_tags
  resource_group          = azurerm_resource_group.examplea
  database_name           = "mydatabase"
  sql_server              = "exampleasql"
  log_analytics_workspace = azurerm_log_analytics_workspace.examplea
  email_addresses         = ["james.woolfenden@gmail.com"]
}
