output "database" {
  value = azurerm_sql_database.examplea
}

output "server" {
  value     = azurerm_sql_server.examplea
  sensitive = true
}

output "storage" {
  value     = azurerm_storage_account.examplea
  sensitive = true
}
