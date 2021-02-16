variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "resource_group" {
}

variable "account_tier" {
  type    = string
  default = "standard"
}

variable "account_replication_type" {
  default = "LRS"
}

variable "sql" {
  default = {
    name                          = "mymssqlserver"
    version                       = "12.0"
    administrator_login           = "admin"
    minimum_tls_version           = "1.2"
    public_network_access_enabled = false
  }
}

variable "administrator_login_password" {
  type      = string
  sensitive = true
  default   = ""
}

variable "database_name" {
  type = string
}

variable "audit_retention_in_days" {
  type        = number
  description = "Retention period for Audit logs in days"
  default     = 90
}

variable "sql_server" {
  default = "mysqlserver"
}
