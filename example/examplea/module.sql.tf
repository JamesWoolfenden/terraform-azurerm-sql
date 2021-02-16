module "sql" {
  source         = "../../"
  common_tags    = var.common_tags
  resource_group = azurerm_resource_group.examplea
  database_name  = "mydatabase"
}
