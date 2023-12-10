data "gitlab_group" "group" {
  full_path = var.gitlab_group
}

data "gitlab_project" "project" {
  path_with_namespace = "${data.gitlab_group.group.name}/${var.gitlab_project_name}"
}

data "azurerm_resource_group" "mgmt_rg" {
  name = "rg-${var.short}-${var.loc}-${var.env}-mgmt"
}

data "azurerm_key_vault" "mgmt_kv" {
  name                = "kv-${var.short}-${var.loc}-${var.env}-mgmt-01"
  resource_group_name = data.azurerm_resource_group.mgmt_rg.name
}

data "azurerm_key_vault_secrets" "get_secrets" {
  key_vault_id = data.azurerm_key_vault.mgmt_kv.id
}

data "azurerm_key_vault_secret" "secrets" {
  for_each     = toset(data.azurerm_key_vault_secrets.secrets.names)
  name         = each.key
  key_vault_id = data.azurerm_key_vault_secrets.secrets.key_vault_id
}
