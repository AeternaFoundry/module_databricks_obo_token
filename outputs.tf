output "obo_tokens_id" {
  description = "Map of id values across all obo_tokens, keyed the same as var.obo_tokens except keys with no id are omitted"
  value       = { for k, v in databricks_obo_token.obo_tokens : k => v.id if v.id != null && length(v.id) > 0 }
}
output "obo_tokens_application_id" {
  description = "Map of application_id values across all obo_tokens, keyed the same as var.obo_tokens except keys with no application_id are omitted"
  value       = { for k, v in databricks_obo_token.obo_tokens : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "obo_tokens_comment" {
  description = "Map of comment values across all obo_tokens, keyed the same as var.obo_tokens except keys with no comment are omitted"
  value       = { for k, v in databricks_obo_token.obo_tokens : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "obo_tokens_lifetime_seconds" {
  description = "Map of lifetime_seconds values across all obo_tokens, keyed the same as var.obo_tokens except keys with no lifetime_seconds are omitted"
  value       = { for k, v in databricks_obo_token.obo_tokens : k => v.lifetime_seconds if v.lifetime_seconds != null }
}
output "obo_tokens_provider_config" {
  description = "Map of provider_config values across all obo_tokens, keyed the same as var.obo_tokens except keys with no provider_config are omitted"
  value       = { for k, v in databricks_obo_token.obo_tokens : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "obo_tokens_token_value" {
  description = "Map of token_value values across all obo_tokens, keyed the same as var.obo_tokens except keys with no token_value are omitted"
  value       = { for k, v in databricks_obo_token.obo_tokens : k => v.token_value if v.token_value != null && length(v.token_value) > 0 }
  sensitive   = true
}

