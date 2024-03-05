output "subnets" {
  value       = { for subnet in azurerm_subnet.subnets : subnet.name => subnet }
  description = "Blocks containing configuration of each subnet."
  # module.MODULE_NAME.subnets["SUBNET_NAME"].id
}