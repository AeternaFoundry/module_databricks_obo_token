variable "obo_tokens" {
  description = <<EOT
Map of obo_tokens, attributes below
Required:
    - application_id
Optional:
    - comment
    - lifetime_seconds
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    application_id   = string
    comment          = optional(string)
    lifetime_seconds = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

