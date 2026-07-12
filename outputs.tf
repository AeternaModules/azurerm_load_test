output "load_tests_id" {
  description = "Map of id values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.id }
}
output "load_tests_data_plane_uri" {
  description = "Map of data_plane_uri values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.data_plane_uri }
}
output "load_tests_description" {
  description = "Map of description values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.description }
}
output "load_tests_encryption" {
  description = "Map of encryption values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.encryption }
}
output "load_tests_identity" {
  description = "Map of identity values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.identity }
}
output "load_tests_location" {
  description = "Map of location values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.location }
}
output "load_tests_name" {
  description = "Map of name values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.name }
}
output "load_tests_resource_group_name" {
  description = "Map of resource_group_name values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.resource_group_name }
}
output "load_tests_tags" {
  description = "Map of tags values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.tags }
}

