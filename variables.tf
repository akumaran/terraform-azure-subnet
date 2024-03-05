variable "subnet_name" {
  type        = string
  description = "(Required) The name of the subnet."
}

variable "subnet_rg_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the subnet."
}

variable "subnet_vnet_name" {
  type        = string
  description = "(Required) The name of the virtual network to which to attach the subnet."

}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "(Required) The address prefixes to use for the subnet."
}

variable "subnet_service_endpoints" {
  type        = list(string)
  default     = []
  description = "(Optional) The list of Service endpoints to associate with the subnet."
}