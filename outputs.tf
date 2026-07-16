output "load_tests_id" {
  description = "Map of id values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_tests_data_plane_uri" {
  description = "Map of data_plane_uri values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.data_plane_uri if v.data_plane_uri != null && length(v.data_plane_uri) > 0 }
}
output "load_tests_description" {
  description = "Map of description values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.description if v.description != null && length(v.description) > 0 }
}
output "load_tests_encryption" {
  description = "Map of encryption values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.encryption if v.encryption != null && length(v.encryption) > 0 }
}
output "load_tests_identity" {
  description = "Map of identity values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "load_tests_location" {
  description = "Map of location values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.location if v.location != null && length(v.location) > 0 }
}
output "load_tests_name" {
  description = "Map of name values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.name if v.name != null && length(v.name) > 0 }
}
output "load_tests_resource_group_name" {
  description = "Map of resource_group_name values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "load_tests_tags" {
  description = "Map of tags values across all load_tests, keyed the same as var.load_tests"
  value       = { for k, v in azurerm_load_test.load_tests : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

