resource "azurerm_storage_account" "examplea" {
  #checkov:skip=CKV_AZURE_33:Logging on logging
  #checkov:skip=CKV_AZURE_35:Causes audit logging failure
  #checkov:skip=CKV2_AZURE_8
  name                     = var.sql_server
  account_replication_type = var.account_replication_type
  resource_group_name      = var.resource_group.name
  account_tier             = var.account_tier
  location                 = var.resource_group.location

  min_tls_version           = "TLS1_2"
  enable_https_traffic_only = true

  network_rules {
    bypass = [
      "AzureServices",
    ]
    default_action = "Deny"
  }

  tags = var.common_tags
}
