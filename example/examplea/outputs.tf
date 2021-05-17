output "database" {
  value = module.sql.database
}

output "server" {
  value     = module.sql.server
  sensitive = true
}

output "storage" {
  value     = module.sql.storage
  sensitive = true
}
