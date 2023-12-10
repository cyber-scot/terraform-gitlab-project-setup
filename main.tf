resource "gitlab_project_variable" "project_vars" {
  for_each  = data.azurerm_key_vault_secret.secrets
  project   = data.gitlab_project.project.id
  key       = each.key
  value     = each.value.value
  protected = true
}
