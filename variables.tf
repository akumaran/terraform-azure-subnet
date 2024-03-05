variable "subnet_name" {
  type        = string
  description = "(Required) Name of the subnet."
}

variable "subnet_rg_name" {
  type        = string
  description = "(Required) Name of the resource group in which to create the subnet."
}

variable "subnet_vnet_name" {
  type        = string
  description = "(Required) Name of the vnet to which to attach the subnet."
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "(Required) Address prefixes to be used for the subnet."
}

variable "subnet_service_endpoints" {
  type        = list(string)
  default     = []
  description = "(Optional) List of Service endpoints to associate with the subnet."
}