# Azure Subnet Module
This module is for deploying subnet resource in Azure using Terraform

### Inputs
|Variable Name|Type|Required| Default |Description|
|:------|:------|:-----|:-----|:-----|
| subnet_name | `string` | `true` | | subnet name
| subnet_rg_name | `string` | `true` |  | name of the resource group
| subnet_vnet_name | `string` | `true` |  | Virtual network name in which the subnet should be created
| subnet_address_prefixes | `list(string)` | `true` | | address space that is used in the subnet
| subnet_service_endpoints | `list(string)` | `false` | `[]` | The list of Service endpoints to associate with the subnet. Possible values include: `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage` and `Microsoft.Web`.

### Outputs
|Name | Description |
|:------|:-----|
| subnet_id_out | The id of the newly created subnet
