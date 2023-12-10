
```hcl
resource "gitlab_project_variable" "project_vars" {
  for_each  = data.azurerm_key_vault_secret.secrets
  project   = data.gitlab_project.project.id
  key       = each.key
  value     = each.value.value
  protected = true
}
```
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.84.0 |
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | 16.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_project_variable.project_vars](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project_variable) | resource |
| [azurerm_key_vault.mgmt_kv](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) | data source |
| [azurerm_key_vault_secret.secrets](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault_secret) | data source |
| [azurerm_key_vault_secrets.get_secrets](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault_secrets) | data source |
| [azurerm_resource_group.mgmt_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [gitlab_group.group](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/group) | data source |
| [gitlab_project.project](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_GITLAB_TOKEN"></a> [GITLAB\_TOKEN](#input\_GITLAB\_TOKEN) | The token to be used to authenticate to GitLab, normally sourced via TF\_VAR | `string` | n/a | yes |
| <a name="input_Regions"></a> [Regions](#input\_Regions) | Converts shorthand name to longhand name via lookup on map list | `map(string)` | <pre>{<br>  "eus": "East US",<br>  "euw": "West Europe",<br>  "uks": "UK South",<br>  "ukw": "UK West"<br>}</pre> | no |
| <a name="input_env"></a> [env](#input\_env) | The env variable, for example - prd for production. normally passed via TF\_VAR. | `string` | `"prd"` | no |
| <a name="input_gitlab_group"></a> [gitlab\_group](#input\_gitlab\_group) | The name of the gitlab group | `string` | `"cyber-scot"` | no |
| <a name="input_gitlab_instance"></a> [gitlab\_instance](#input\_gitlab\_instance) | The name of the GitLab instance | `string` | `"gitlab.com"` | no |
| <a name="input_gitlab_project_name"></a> [gitlab\_project\_name](#input\_gitlab\_project\_name) | The name of the GitLab project | `string` | `"terraform-ci-cd-glue"` | no |
| <a name="input_loc"></a> [loc](#input\_loc) | The loc variable, for the shorthand location, e.g. uks for UK South.  Normally passed via TF\_VAR. | `string` | `"uks"` | no |
| <a name="input_short"></a> [short](#input\_short) | The shorthand name of to be used in the build, e.g. cscot for CyberScot.  Normally passed via TF\_VAR. | `string` | `"cscot"` | no |
| <a name="input_static_tags"></a> [static\_tags](#input\_static\_tags) | The tags variable | `map(string)` | <pre>{<br>  "Contact": "info@cyber.scot",<br>  "CostCentre": "671888",<br>  "ManagedBy": "Terraform"<br>}</pre> | no |

## Outputs

No outputs.
