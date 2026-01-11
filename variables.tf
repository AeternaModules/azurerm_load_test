variable "load_tests" {
  description = <<EOT
Map of load_tests, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - description
    - tags
    - encryption (block):
        - identity (required, block):
            - identity_id (required)
            - type (required)
        - key_url (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    description         = optional(string)
    tags                = optional(map(string))
    encryption = optional(object({
      identity = object({
        identity_id = string
        type        = string
      })
      key_url = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
}

