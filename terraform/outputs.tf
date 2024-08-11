output "control_pip" {
  description = "value of the public ip address of the control"
  value       = azurerm_public_ip.control.ip_address
}

output "node_pip" {
  description = "value of the public ip address of the node"
  value       = azurerm_public_ip.node[*].ip_address
}
