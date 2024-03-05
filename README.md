# Azure Subnet Module
This module is for deploying subnet resource in Azure using Terraform

### Inputs
|Variable Name|Type|Required| Default |Description|
|:------|:------|:-----|:-----|:-----|
| name | `string` | `true` | | subnet name
| resource_group_name | `string` | `true` |  | name of the resource group
| virtual_network_name | `string` | `true` |  | Virtual network name in which the subnet should be created
| address_prefixes | `list(string)` | `true` | | address space that is used in the subnet
| service_endpoints | `string` | `false` | `[]` | The list of Service endpoints to associate with the subnet. Possible values include: `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage` and `Microsoft.Web`.
| delegation | `string` | `false` | | One or more delegation blocks
| private_endpoint_network_policies_enabled | `boolean` | `false` | | Enable or Disable network policies for the private endpoint on the subnet
| private_link_service_network_policies_enabled | `boolean` | `false` | | Enable or Disable network policies for the private link service on the subnet

### Outputs
|Name | Description |
|:------|:-----|
| subnet_id_out | The id of the newly created subnet
