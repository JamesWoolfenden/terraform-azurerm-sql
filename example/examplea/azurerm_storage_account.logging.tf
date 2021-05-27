resource "azurerm_storage_account" "logging" {
  #checkov:skip=CKV_AZURE_33:Logging on logging
  #checkov:skip=CKV_AZURE_35:Causes audit logging failure
  #checkov:skip=CKV2_AZURE_1
  #checkov:skip=CKV2_AZURE_18
  #checkov:skip=CKV2_AZURE_8
  name                     = "logging"
  account_replication_type = "LRS"
  resource_group_name      = azurerm_resource_group.examplea.name
  account_tier             = "standard"
  location                 = azurerm_resource_group.examplea.location

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
