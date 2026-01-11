resource "azurerm_load_test" "load_tests" {
  for_each = var.load_tests

  location            = each.value.location
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  description         = each.value.description
  tags                = each.value.tags

  dynamic "encryption" {
    for_each = each.value.encryption != null ? [each.value.encryption] : []
    content {
      identity {
        identity_id = encryption.value.identity.identity_id
        type        = encryption.value.identity.type
      }
      key_url = encryption.value.key_url
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }
}

