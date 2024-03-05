output "subnet_id_out" {
  value       = { for subnet in azurerm_subnet.subnets : subnet.name => subnet }
  description = "Blocks containing configuration of each subnet."
}