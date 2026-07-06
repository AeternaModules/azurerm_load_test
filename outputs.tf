output "load_tests" {
  description = "All load_test resources"
  value       = azurerm_load_test.load_tests
}
output "load_tests_data_plane_uri" {
  description = "List of data_plane_uri values across all load_tests"
  value       = [for k, v in azurerm_load_test.load_tests : v.data_plane_uri]
}
output "load_tests_description" {
  description = "List of description values across all load_tests"
  value       = [for k, v in azurerm_load_test.load_tests : v.description]
}
output "load_tests_encryption" {
  description = "List of encryption values across all load_tests"
  value       = [for k, v in azurerm_load_test.load_tests : v.encryption]
}
output "load_tests_identity" {
  description = "List of identity values across all load_tests"
  value       = [for k, v in azurerm_load_test.load_tests : v.identity]
}
output "load_tests_location" {
  description = "List of location values across all load_tests"
  value       = [for k, v in azurerm_load_test.load_tests : v.location]
}
output "load_tests_name" {
  description = "List of name values across all load_tests"
  value       = [for k, v in azurerm_load_test.load_tests : v.name]
}
output "load_tests_resource_group_name" {
  description = "List of resource_group_name values across all load_tests"
  value       = [for k, v in azurerm_load_test.load_tests : v.resource_group_name]
}
output "load_tests_tags" {
  description = "List of tags values across all load_tests"
  value       = [for k, v in azurerm_load_test.load_tests : v.tags]
}

