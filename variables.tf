variable "subnets" {
  type = list(object({
    name                                          = string
    resource_group_name                           = string
    virtual_network_name                          = string
    address_prefixes                              = list(string)
    service_endpoints                             = optional(list(string))
    delegation                                    = optional(string)
    private_endpoint_network_policies_enabled     = optional(bool)
    private_link_service_network_policies_enabled = optional(bool)
  }))
  default     = []
  description = "List of objects that represent the configuration of each subnet."
}