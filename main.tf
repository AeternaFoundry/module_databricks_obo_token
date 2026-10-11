resource "databricks_obo_token" "obo_tokens" {
  for_each = var.obo_tokens

  application_id   = each.value.application_id
  comment          = each.value.comment
  lifetime_seconds = each.value.lifetime_seconds

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

