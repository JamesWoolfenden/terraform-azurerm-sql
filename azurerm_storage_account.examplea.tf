resource "azurerm_storage_account" "examplea" {
  #checkov:skip=CKV_AZURE_33:Logging on logging
  name                     = var.sql_server
  account_replication_type = var.account_replication_type
  resource_group_name      = var.resource_group.name
  account_tier             = var.account_tier
  location                 = var.resource_group.location

  min_tls_version           = "TLS1_2"
  enable_https_traffic_only = true
  network_rules {
    default_action = "Deny"
  }
}

